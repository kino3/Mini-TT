-----------------------------------------
-- Main module
-----------------------------------------

module Main where

import Prelude hiding ((*))
import Control.Monad.Error()
import Control.Monad.State
import System.Environment
import System.IO.Unsafe

import Core.Abs
import Core.Print
import Core.ErrM
import Core.Par

-----------------------------------------------------------
-- Values
-----------------------------------------------------------

type Name = Ident

data Val =
     Lam Clos
  |  Pair Val Val
  |  Con Name Val
  |  Unit
  |  Set
  |  Pi  Val Clos
  |  Sig Val Clos
  |  One
  |  Fun  Pos SClos
  |  Data Pos SClos 
  |  Nt Neut
  deriving Show

data Neut = Gen  Int Name
          | App  Neut Nf
          | Fst  Neut
          | Snd  Neut
          | NtFun Pos SClos Neut
  deriving Show

type SClos = ([(Name,Exp)], Rho)
type   Nf  = Val
type TVal  = Val

----------------------------------------
-- Choice of function representations
----------------------------------------

-- Function closures
data Clos = Cl Patt Exp Rho | ClCmp Clos Name deriving Show

-- instantiation of a closure by a value
(*) :: Clos -> Val -> Val
(Cl p e rho) * v = eval e (UpVar rho p v)
(ClCmp f c ) * v = f * Con c v

mkCl :: Patt -> Exp -> Rho -> Clos
mkCl p e rho = Cl p e rho

clCmp :: Clos -> Name -> Clos
clCmp g c  = ClCmp g c


{-
--  Higher order functions

type Clos = Val -> Val
instance Show Clos where show f = "Clos" ++ showVal 0 (Lam f)

(*) :: Clos -> Val -> Val
f * v = f v 

mkCl :: Patt -> Exp -> Rho -> Clos
mkCl p e rho = \v -> eval e (UpVar rho p v)

clCmp :: Clos -> Name -> Clos
clCmp g c = \v -> g * (Con c v)
-}

-------------------------------------
-- Operaions on Values
-------------------------------------

type Pos = ((Int, Int), String)


app :: Val -> Val -> Val
app (Lam f)             v        = f * v
app (Fun _ (ces, rho)) (Con c v) = app (eval e rho) v
                                   where e = head [e' | (c',e') <- ces, c == c']
app (Fun pos s)        (Nt k)    = Nt(NtFun pos s k)
app (Nt k)             m         = Nt(App k m)
app w u = error ("app " ++ showVal 0 w ++ showVal 0 u)

vfst :: Val -> Val
vfst (Pair u1 _) = u1
vfst (Nt k)      = Nt(Fst k)
vfst w = error ("vfst " ++ showVal 0 w)

vsnd :: Val -> Val
vsnd (Pair _ u2) = u2
vsnd (Nt k)      = Nt(Snd k)
vsnd w =  error ("vsnd " ++ showVal 0 w)

---------------------------------------------
-- Environment
---------------------------------------------

data Rho = RNil | UpVar Rho Patt Val | UpDec Rho Decl deriving Show

getRho :: Rho -> Name -> Val
getRho (UpVar rho p v) x | x `inPat` p = patProj p x v
                         | otherwise   = getRho rho x
getRho (UpDec rho (Def  p _ e)) x | x `inPat` p = patProj p x (eval e rho)
                                  | otherwise   = getRho rho x
getRho rho0@(UpDec rho (Drec p _ e)) x
                                  | x `inPat` p = patProj p x (eval e rho0)
                                  | otherwise   = getRho rho x
getRho RNil _ = error "getRho"

inPat :: Name -> Patt -> Bool
inPat x (PVar y)      = x == y
inPat x (PPair p1 p2) = inPat x p1 || inPat x p2
inPat _ Punit         = False

patProj :: Patt -> Name -> Val -> Val
patProj (PVar y)      x v | x == y       = v
patProj (PPair p1 p2) x v | x `inPat` p1 = patProj p1 x (vfst v)
                          | x `inPat` p2 = patProj p2 x (vsnd v)
patProj _ _ _ = error "patProj"

lRho :: Rho -> Int
lRho RNil            = 0
lRho (UpVar rho _ _) = lRho rho + 1
lRho (UpDec rho _  ) = lRho rho


eval :: Exp -> Rho -> Val
eval e0 rho = case e0 of
    ESet          -> Set
    EDec d e      -> eval e (UpDec rho d)
    ELam p e      -> Lam $ mkCl p e rho
    EPi  p a b    -> Pi  (eval a rho) $ mkCl p b rho
    ESig p a b    -> Sig (eval a rho) $ mkCl p b rho
    EOne          -> One
    Eunit         -> Unit
    EFst e        -> vfst (eval e rho)
    ESnd e        -> vsnd (eval e rho)
    EApp e1 e2    -> app (eval e1 rho) (eval e2 rho)
    EVar x        -> getRho rho x
    EPair e1 e2   -> Pair  (eval e1 rho) (eval e2 rho)
    ECon c e1     -> Con c (eval e1 rho)
    EData (DataTk pos) cas
                  -> Data pos ([(c,a) | Summand c a <- cas], rho)
    ECase (CaseTk pos) ces
                  -> Fun  pos ([(c,e) | Branch  c e <- ces], rho)
    e -> error $ "eval: should have been desugared\n e = " ++ printTree e

-------------------------------------------
-- Readback functions
-------------------------------------------

eVar :: String -> Exp
eVar = EVar . Ident

rbV :: Int -> Val  -> Exp -- to do: change to Normal Expression

rbV i v0 = case v0 of
      Lam f      -> ELam (pat i) (rbV (i+1) (f * gen i))
      Pair u v   -> EPair (rbV i u) (rbV i v)
      Con  c v   -> ECon  c (rbV i v)
      Unit       -> Eunit 
      Set        -> ESet
      Pi  t g    -> EPi  (pat i) (rbV i t) (rbV (i+1) (g * gen i))
      Sig t g    -> ESig (pat i) (rbV i t) (rbV (i+1) (g * gen i))
      One        -> EOne
      Fun  pos (_,rho) -> foldr (flip EApp) (eVar $ show pos) (rbRho i rho)
      Data pos (_,rho) -> foldr (flip EApp) (eVar $ show pos) (rbRho i rho)
      Nt k       -> rbN i k
    where pat j = PVar $ Ident $ "G#" ++ show j
          gen j = Nt $ Gen j (Ident "G#")

rbN :: Int -> Neut -> Exp
rbN i k0 = case k0 of
      Gen j x -> eVar $ printTree x++show j
      App k m -> EApp (rbN i k) (rbV i m)
      Fst k   -> EFst (rbN i k)
      Snd k   -> ESnd (rbN i k)
      NtFun pos (_,rho) k ->
        foldr (flip EApp) (eVar $ show pos) (rbRho i rho) `EApp` rbN i k

rbRho :: Int -> Rho -> [Exp]
rbRho _ RNil = []
rbRho i (UpVar rho _ v) = rbV i v : rbRho i rho
rbRho i (UpDec rho _  ) = rbRho i rho

------------------------------------------------
-- Error monad
------------------------------------------------

type ErrorMessage = String
type G a = Either ErrorMessage a

------------------------------------------------
-- Type environment
------------------------------------------------

type Gamma = [(Name, TVal)]

lookupG :: (Show a, Eq a) => a -> [(a,b)] -> G b
lookupG x xts = case lookup x xts of Just t  -> return t
                                     Nothing -> fail $ "lookupG:" ++ show x

-- Updating type environment   Gamma |- p : t = u => Gamma'
upG :: Gamma -> Patt -> TVal -> Val -> G Gamma
upG gma Punit         _         _ = return gma
upG gma (PVar x)      t         _ = return $ (x,t):gma
upG gma (PPair p1 p2) (Sig t g) v = do gma1 <- upG gma p1 t (vfst v)
                                       upG gma1 p2 (g * vfst v) (vsnd v)
upG _   p             _         _ = fail $ "upG: p = " ++ printTree p

-------------------------------------------------
-- Type checking rules
-------------------------------------------------

genV :: Rho -> Val
genV rho = Nt(Gen (lRho rho) (Ident "TC#"))

checkD :: Rho -> Gamma -> Decl -> G Gamma
checkT :: Rho -> Gamma -> Exp  -> G ()
check  :: Rho -> Gamma -> Exp  -> TVal -> G ()
checkI :: Rho -> Gamma -> Exp  -> G TVal

checkD rho gma d@(Def  p a e) = do
  debug $ "checking "++ printTree d
  checkT rho gma a
  let t = eval a rho
  check rho gma e t
  gma1 <- upG gma p t (eval e rho)
  return gma1
           
checkD rho gma d@(Drec p a e) = do
  debug $ "checking "++ printTree d
  checkT rho gma a
  let t   = eval a rho
      gen = genV rho
  gma1 <- upG gma p t gen
  check (UpVar rho p gen) gma1 e t
  let v = eval e (UpDec rho d)
  gma2 <- upG gma p t v
  return gma2

checkT rho gma e0 =
  case e0 of
    EPi  p a b -> do checkT rho gma a
                     gma1 <- upG gma p (eval a rho) (genV rho)
                     checkT (UpVar rho p (genV rho)) gma1 b
    ESig p a b -> checkT rho gma (EPi p a b)
    ESet       -> return ()
    EOne       -> return ()
    a          -> check rho gma a Set

check rho gma e0 t0 = do
  case (e0, t0) of
    (ELam p e   , Pi  t g )-> do let gen = genV rho
                                 gma1 <- upG gma p t gen
                                 check (UpVar rho p gen) gma1 e (g * gen)
    (EPair e1 e2, Sig t g )-> do check rho gma e1 t
                                 check rho gma e2 (g * eval e1 rho)
    (ECon c e   , Data _ (cas,rho1))-> do a <- lookupG c cas
                                          check rho gma e (eval a rho1)
    (ECase _ ces, Pi (Data _ (cas, rho1)) g)
      | cs == cs1 -> sequence_ [check rho gma e (Pi (eval a rho1) (clCmp g c))
                               | (Branch c e, (_,a)) <- zip ces cas]
      | otherwise -> fail "case branches does not match the data type"
      where cs  = [c | Branch c _ <- ces]
            cs1 = [c | (c, _)     <- cas]
    (Eunit      , One)-> return ()
    (EOne       , Set)-> return ()
    (EPi  p a b , Set)-> do check rho gma a Set
                            let gen = genV rho
                            gma1 <- upG gma p (eval a rho) gen
                            check (UpVar rho p gen) gma1 b Set
    (ESig p a b , Set)-> check rho gma (EPi p a b) Set
    (EData _ cas, Set)-> sequence_ [check rho gma a Set | Summand _ a <- cas]
    (EDec d e   , t  )-> do gma1 <- checkD rho gma d
                            check (UpDec rho d) gma1 e t
    (e          , t  )-> do t1 <- checkI rho gma e
                            eqNf (lRho rho) t t1
  where
  eqNf :: Int -> Nf -> Nf -> G ()
  eqNf i m1 m2
    | e1 == e2  = return ()
    | otherwise = fail $ "eqNf: " ++ printTree e1 ++ "=/=" ++ printTree e2
    where e1 = rbV i m1
          e2 = rbV i m2

checkI rho gma e0 =
  case e0 of
    EVar x     -> lookupG x gma
    EApp e1 e2 -> do t1 <- checkI rho gma e1
                     (t, g) <- extPiG t1
                     check rho gma e2 t
                     return (g * eval e2 rho)
    EFst e     -> fst `fmap` (extSigG =<< checkI rho gma e)
    ESnd e     -> do t <- checkI rho gma e
                     (_, g) <- extSigG t
                     return (g * vfst (eval e rho))

    e          -> fail ("checkI: " ++ printTree e)
  where
  extPiG :: TVal -> G (TVal, Clos)
  extPiG (Pi t g) = return (t, g)
  extPiG u        = fail ("extPiG " ++ showVal 0 u)

  extSigG :: TVal -> G (TVal, Clos)
  extSigG (Sig t g) = return (t, g)
  extSigG u         = fail ("extSigG " ++ showVal 0 u)

------------------------------------------------------
-- Main checking routines
------------------------------------------------------

-- The input is checked as an expression of type One.
checkMain :: Exp -> G ()
checkMain e = check RNil [] e One

-- checking a string input
checkStr :: String -> IO()
checkStr s =
  case pExp $ myLexer s of -- parsing using routines generated by BNF converter
    Bad msg -> putStrLn $ "Parse error: " ++ msg
    Ok  e  -> do
      case checkMain e of
        Left  msg' -> putStrLn ("type-checking failed:\n" ++ msg')
        Right _    -> putStrLn ("type-checking succeded.")

-- checking the content of a file.
checkFile :: String -> IO()
checkFile file = checkStr =<< readFile file

-- main routine to execute at a command line.
main :: IO()
main = do args <- getArgs
          case args of [file] -> checkFile file
                       _      -> putStrLn "usage: agdacore FILE"

-----------------------------------------------------
-- For debugging
-----------------------------------------------------
debug :: String -> G ()
debug = \s -> do () <- return $ unsafePerformIO $ putStrLn s; return ()

showVal :: Int -> Val -> String  -- for debug print only
showVal i u = show (rbV i u)

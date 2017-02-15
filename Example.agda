module Example where

-- formalization of Mini-TT paper 6.3 in Agda
id : (A : Set) → A → A
id = λ A x → x

data Bool : Set where
  true false : Bool

elimBool : (C : Bool → Set) → C false → C true → ((b : Bool) → C b)
elimBool C h0 h1 true  = h1
elimBool C h0 h1 false = h0

-- fyi
if_then_else_ : {C : Bool → Set} → (b : Bool) → C true → C false → C b
if_then_else_ {C} b x y = elimBool C y x b

data Nat : Set where
  zero : Nat
  succ : Nat → Nat

data List (A : Set) : Set where
  nil : List A
  cons : A → List A → List A

natrec : (C : Nat → Set) → C zero → ((n : Nat) → C n → C (succ n)) → ((n : Nat) → C n)
natrec C a g zero      = a
natrec C a g (succ n1) = g n1 (natrec C a g n1)

add : Nat → Nat → Nat
add x zero      = x
add x (succ y1) = succ (add x y1) 

eqNat : Nat → Nat → Bool
eqNat zero      zero    = true
eqNat zero     (succ y) = false
eqNat (succ x)  zero    = false
eqNat (succ x) (succ y) = eqNat x y

open import Data.Product

ex : (Σ[ X ∈ Set ] (X → Set))
ex = V , T
  where
   mutual
    data V : Set where
      nat : V
      pi  : Σ[ x ∈ V ] (T x → V) → V

    T : V → Set
    T nat          = Nat
    T (pi (x , f)) = (y : T x) → T (f y)

   hoge : V
   hoge = pi (nat , (λ x → pi (nat , (λ y → {!!}))))

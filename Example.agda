module Example where

-- formalization of Mini-TT paper 6.3 in Agda
id : (A : Set) → A → A
id = λ A x → x

data Bool : Set where
  true false : Bool

elimBool : (C : Bool → Set) → C false → C true → ((b : Bool) → C b)
elimBool C h0 h1 true  = h1
elimBool C h0 h1 false = h0

if_then_else_ : {C : Bool → Set} → (b : Bool) → C true → C false → C b
if_then_else_ {C} b x y = elimBool C y x b


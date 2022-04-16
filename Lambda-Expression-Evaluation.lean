/- Some examples of Lambda Applications evaluation -/
import standard
open nat
 
constants A B C : Type
constant f : A → B
constant g : B → C
constant h : A → A
constants (a : A) (b : B)
 
eval (λ x : A, x) a                -- a
eval (λ x : A, b) a                -- b
eval (λ x : A, b) (h a)            -- b 
eval (λ x : A, g (f x)) a          -- g (f a)
 
eval (λ v u x, v (u x)) g f a      -- g (f a)
/- We do not need to add type for arguments for the above lambda term because lean can automatically deduct their types based on the parameters passed but it is a good practice to specify arguments to avoid undefined results. To provide generalization to a lambda term we may provide custom types to the arguments and provide types later on. -/

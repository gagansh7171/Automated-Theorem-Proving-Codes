-- some examples of Lambda Abstractions and how to check their types
import standard
open bool
constants A B  : Type
constants a1 a2 : A
constants b1 b2 : B
 
constant h : A → B → A
constant f : A → A
constant p : A → A → bool
constant g : A → B
 
/- we can use fun as a replacement for λ in the expressions -/
check fun x : A, f x                      -- A → A
-- fun x : A, f x is the Lean’s implementation of λx:A. f x lambda expression
check λ x : A, f x                        -- A → A
 
check λ x : A, f (f x)                    -- A → A
-- λ x : A, f (f x) is the implementation of λx:A. f(f x)
 
 
check λ x : A, h x b1                     -- A → A
-- lambda application are left associative. The above term is same as 
-- (λx:A. h x b1) which can also be written as (λx:A. (h x) b1)
 
 
check λ x : A, p (f (f x)) (h (f a1) b2)  -- A → bool
/- the expressions can be bound by parenthesis to make it more clear -/
 
check λ x : A, λ y : B, h (f x) y         -- A → B → A
check λ (x : A) (y : B), h (f x) y        -- A → B → A
check λ x y, h (f x) y                    -- A → B → A
/- here Lean can implicitly understand that x is of type A and y is of type B by analyzing the expression in the body of the lambda term. But it is a good practice to specify the type of arguments so as to avoid undesirable and unexplained results -/

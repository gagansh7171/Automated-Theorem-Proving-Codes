/- Some examples of type checking of Lambda Applications -/
import standard
open nat
 
constant f : nat -> nat
constant n : nat
 
check f n                                -- output : nat
/- application of a number num on a function of type num -> num gives an output of type nat -/
 
check (λ x : nat, f x) n                 -- output : nat
/- the number n is passed as parameter to the above specified lambda term -/

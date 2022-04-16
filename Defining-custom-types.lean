import standard
open nat bool
constants (x_nat : nat) (x_bool : bool)
constants (f_nat_to_bool : nat → bool) (f_bool_to_nat : bool → nat)
definition var (X : Type)(Y:Type)(x:X)(f':X→Y) :=  f' x
print var 
-- var : Π (X : Type) (Y : Type), X → (X → Y) → Y := λ X Y x f', f' x
 
check var nat bool 
-- var ℕ bool : ℕ → (ℕ → bool) → bool
 
check var nat bool x_nat f_nat_to_bool
-- var ℕ bool x_nat f_nat_to_bool : bool
 
check var bool nat x_bool f_bool_to_nat
-- var bool ℕ x_bool f_bool_to_nat : ℕ

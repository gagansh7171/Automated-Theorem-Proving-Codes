constants (p q : Prop) (Hnq : ¬q) (Hpq : p → q)
theorem t (Hp : p): false :=  Hnq (Hpq Hp)
check t                  -- t : p → false

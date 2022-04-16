theorem t1 (p: Prop) (Hp : p) : p := Hp
check t1           -- t1 : ∀ p, p → p

constants (p q : Prop)
theorem t_and_intro  (Hp : p) (Hq : q) : p ∧ q := and.intro Hp Hq
check t_and_intro           -- t_and_intro : ∀ p q, p → q → p ∧ q

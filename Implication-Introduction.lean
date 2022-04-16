constants p q : Prop
axiom Hq : q
theorem th : p → q := λ Hp : p, Hq
check th           -- th : p → q

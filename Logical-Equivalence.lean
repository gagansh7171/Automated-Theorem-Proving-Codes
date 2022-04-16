theorem and_swap (p q : Prop) : p ∧ q ↔ q ∧ p :=
iff.intro
  (assume H : p ∧ q,
    and.intro (and.right H) (and.left H))
  (assume H : q ∧ p,
    and.intro (and.right H) (and.left H))
 
check and_swap    -- p ∧ q ↔ q ∧ p

theorem t (p q r:Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
iff.intro
    (assume Hpqr : p ∧ (q ∨ r), 
        or.elim (and.elim_right Hpqr)
            (assume Hq : q,
                or.intro_left (p ∧ r) (and.intro (and.elim_left Hpqr) Hq)
            )
            (assume Hr : r,
                or.intro_right (p ∧ q) (and.intro (and.elim_left Hpqr) Hr)
            )
    )
    (assume Hpqr : (p ∧ q) ∨ (p ∧ r),
        or.elim Hpqr 
            (assume Hpq : (p ∧ q),
                and.intro (and.elim_left Hpq) (or.intro_left r (and.elim_right Hpq))
            )
            (assume Hpr : (p ∧ r),
                and.intro (and.elim_left Hpr) (or.intro_right q (and.elim_right Hpr))
            )
    )
check t  -- t : ∀ p q r, p ∧ (q ∨ r) ↔ p ∧ q ∨ p ∧ r

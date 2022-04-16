theorem t (p q r:Prop) : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) :=
iff.intro
    ( assume Hpqr : (p ∨ q) ∨ r,
        or.elim Hpqr
            ( assume Hpq : p ∨ q,
                or.elim Hpq
                    ( assume Hp : p,
                        or.intro_left (q ∨ r) Hp)
                    ( assume Hq : q,
                        or.intro_right p (or.intro_left r Hq))
            )
            ( assume Hr : r,
                or.intro_right p (or.intro_right q Hr)
            )
    )
    ( assume Hpqr : p ∨ (q ∨ r),
        or.elim Hpqr
            ( assume Hp : p,
                or.intro_left r (or.intro_left q Hp)
            )
            ( assume Hqr : q ∨ r,
                or.elim Hqr
                    ( assume Hq : q,
                        or.intro_left r (or.intro_right p Hq))
                    ( assume Hr : r,
                        or.intro_right (p ∨ q) Hr)
            )
    )
check t  -- t : ∀ p q r, (p ∨ q) ∨ r ↔ p ∨ (q ∨ r)

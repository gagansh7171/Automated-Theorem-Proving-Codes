constants (p q : Prop) (H : p ∧ q)
theorem t_proof_left : p := and.elim_left H
theorem t_proof_right : q := and.elim_right H
check t_proof_left    -- t_proof_left : p
check t_proof_right   -- t_proof_right : q

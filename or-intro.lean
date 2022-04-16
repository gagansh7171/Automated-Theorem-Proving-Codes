constants p q : Prop
theorem t_or_intro_left (Hp : p) : p ∨ q := or.intro_left q Hp
theorem t_or_intro_right (Hq : q) : p ∨ q := or.intro_right p Hq
check t_or_intro_left    -- p → p ∨ q
check t_or_intro_right   -- q → p 

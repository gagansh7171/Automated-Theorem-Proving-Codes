/- Some examples of Lambda Definitions -/
constants A B C : Type -- using custom types is preferable
constants (a : A) (g : A → B) (f : B → C) (h : A → A)
 
definition fogoa : C := f (g a)
/- definition is of the form 
definition var_name : Type of the Lambda Application := Expression
-/
check fogoa            -- C
print fogoa            -- g (f a)
/- We can print the exact lambda expression using its variable name -/
-- We can omit the type when Lean can figure it out.
definition fogoa' := f (g a)
print fogoa'           -- fogoa' : C := f (g a)
 
definition fogohoa := f (g (h a))
print fogohoa          -- fogohoa : C := f (g (h a))
 
definition f_eval_g : A → C := λ x : A, f (g x)
print f_eval_g         -- f_eval_g : A → C := λ x, f (g x)
 
/- We can omit types when Lean can figure it out itself -/
definition f_eval_g' := λ x, f (g x)
print f_eval_g'        -- f_eval_g' : A → C := λ x, f (g x)
 
/- We can shift the arguments of the lambda term to the left hand side as well to avoid writing λ  but notice the type mentioned before the expression is the resulting type of evaluation of RHS, it does not consider the arguments provided to the left. -/
definition f_eval_g_left (x:A) : C := f (g x)
print f_eval_g_left    -- f_eval_g_left : A → C := λ x, f (g x)
 
/- If we Lean can figure out types on its own then we can omit that as well-/
definition f_eval_g_left_no_type (x) := f (g x)
print f_eval_g_left_no_type  -- f_eval_g_left_no_type : A → C := λ x, f (g x)
 

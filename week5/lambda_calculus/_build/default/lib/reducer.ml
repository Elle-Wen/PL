open Ast

let next_var = ref 0

let fresh_var (_ : unit) : string =
  let () = next_var := !next_var + 1 in
  "x$" ^ string_of_int !next_var

(*Write a function which takes a lambda calculus term s, a string x, and a term t and returns s[t/x].*)
let beta_reduce (s: lc_expr) (x : string) (t: lc_expr): lc_expr = 
  let rec helper (s: lc_expr) (x : string) (t: lc_expr) (depth: int): lc_expr = 
    match s with 
    | EVar y -> if y = x then t else EVar y
    | ELambda (y, e) -> if y = x then ELambda (y, e) else let z = fresh_var () in helper (ELambda (z, helper e y (EVar z) (depth + 1))) x t (depth + 1)
    | EApp (e1, e2) -> EApp (helper e1 x t (depth + 1), helper e2 x t (depth + 1))
  in helper s x t 0

(*Write a function which takes a lambda calculus term and determines whether it is irreducible.*)
let rec irr_or_not (s: lc_expr): bool = 
  match s with 
  | EVar _ -> true 
  | ELambda (_, e) -> irr_or_not e
  | EApp (EVar _, e2) -> if irr_or_not e2 then true else false 
  | EApp (EApp(a,b), e2) -> if irr_or_not (EApp (a,b)) then if irr_or_not e2 then true else false else false 
  | _ -> false 
(*Write a function which accepts a lambda calculus term and reduces it as much as possible.*)
let rec reduce (s: lc_expr): lc_expr = 
  let rec one_step_reduce (old: lc_expr) : lc_expr = 
      (match old with 
      |EApp(ELambda(x, t),s) -> beta_reduce s x t 
      |ELambda(x, t) -> ELambda(x, one_step_reduce t)
      |EApp (EVar x,t)-> EApp(EVar x, one_step_reduce t)
      |EApp (EApp(t1,t2),t3)-> if irr_or_not (EApp (t1, t2)) then EApp (EApp(t1,t2), one_step_reduce t3) else EApp(one_step_reduce (EApp(t1, t2)), t3) 
      |any -> any
      ) in 
  let now = one_step_reduce s in 
  if (irr_or_not now) then now else reduce now 
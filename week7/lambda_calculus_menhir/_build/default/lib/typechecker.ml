(*Now, we'll build a typechecker for STLC. This is a function which accepts an STLC expression and either determines the type of the expression or throws a TypeError if the expression is ill-typed. I haven't given you a file or function header for typechecking. You can decide where you want to put your typechecking function and how to define it. In OCaml, you can declare an error type with:
   exception TypeError of string*
which tells OCaml to create a type TypeError which takes a string argument. You can then raise an error with raise (TypeError msg) where msg is whatever string you want to have associated with the error.
The typing rules for STLC are:

(x, t) in G
-----------
G |- x : t

G |- e1 : t1 -> t2    G |- e2 : t1
----------------------------------
         G |- e1 e2 : t2

   G U {(x, t1)} |- e : t2       (where U is set union)
------------------------------
G |- (& x : t1 . e) : t1 -> t2

------------      ----------------      -----------------      --------------
G |- i : int      G |- true : bool      G |- false : bool      G |- () : unit
*)
open Ast 
exception TypeError of string

let typechecker (expression: lc_expr): typ = 
  let rec typecheck (expr: lc_expr) (context: (string * typ) list): typ = 
    match expr with 
    | EVar x -> 
      (match List.assoc_opt x context with 
      | Some t -> t 
      | None -> raise (TypeError "Variable not found in context"))
    | EApp (e1, e2) -> 
      let t1 = typecheck e1 context in 
      let t2 = typecheck e2 context in 
      (match t1 with 
      | FuncTy (t1', t2') -> 
        if t1' = t2 then t2' else raise (TypeError "Function argument type mismatch")
      | _ -> raise (TypeError "Function expected"))
    | ELambda (x, t, e) -> 
      let t' = typecheck e ((x, t) :: context) in 
      FuncTy (t, t')
    | EInt _ -> IntTy 
    | ETrue -> BoolTy 
    | EFalse -> BoolTy
    | EUnit -> UnitTy 
  in typecheck expression []


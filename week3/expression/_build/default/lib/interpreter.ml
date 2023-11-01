open Parser

exception RuntimeError of string

type value =
  | VInt of int
  | VBool of bool
  | VStr of string 

let print_value : value -> string = function
  | VInt i -> string_of_int i
  | VBool b -> string_of_bool b
  | VStr s -> s

let rec subst (id : string) (v : expr) (expr : expr) : expr = (* let id=v in expr*)
  match expr with 
  | Add (e1, e2) -> Add (subst id v e1, subst id v e2)
  | Mul (e1, e2) -> Mul (subst id v e1, subst id v e2)
  | Int i -> Int i 
  | Sub (e1, e2) -> Sub (subst id v e1, subst id v e2) 
  | Div (e1, e2) -> Div (subst id v e1, subst id v e2) 
  | Modd (e1, e2) -> Modd (subst id v e1, subst id v e2) 
  | Less (e1, e2) -> Less (subst id v e1, subst id v e2) 
  | Equal (e1, e2) -> Equal (subst id v e1, subst id v e2) 
  | Or (e1, e2) -> Or (subst id v e1, subst id v e2) 
  | And (e1, e2) -> And (subst id v e1, subst id v e2) 
  | Nott b1 -> Nott b1 
  | Id str -> if str=id then v else Id str 
  | Iff (e1,e2,e3) -> Iff (subst id v e1, subst id v e2, subst id v e3)
  | Lett (s1, e1, e2) -> Lett (s1, e1, subst id v e2)
  | Truee -> Truee
  | Falsee  -> Falsee

let rec interpret : expr -> value = function
  | Add (e1, e2) -> (match (interpret e1, interpret e2) with
    | (VInt i1, VInt i2) -> VInt (i1 + i2)
    | _ -> raise (RuntimeError "Non-integer argument to +"))
  | Sub (e1, e2) -> (match (interpret e1, interpret e2) with
    | (VInt i1, VInt i2) -> VInt (i1 - i2)
    | _ -> raise (RuntimeError "Non-integer argument to -"))
  | Mul (e1, e2) -> (match (interpret e1, interpret e2) with
    | (VInt i1, VInt i2) -> VInt (i1 * i2)
    | _ -> raise (RuntimeError "Non-integer argument to *"))
  | Iff (e1, e2, e3) ->
    (match interpret e1 with
      | VBool true -> interpret e2
      | VBool false -> interpret e3
      | _ -> failwith "Type Error")
  | Div (e1, e2) -> (match (interpret e1, interpret e2) with
    | (VInt i1, VInt i2) -> VInt (i1 / i2)
    | _ -> raise (RuntimeError "Non-integer argument to /"))
  | Modd (e1, e2) -> (match (interpret e1, interpret e2) with
    | (VInt i1, VInt i2) -> VInt (i1 mod i2)
    | _ -> raise (RuntimeError "Non-integer argument to %"))
  | Less (e1, e2) ->
    let v1 = interpret e1 in
    let v2 = interpret e2 in
    (match (v1, v2) with
      | (VInt i1, VInt i2) -> VBool (i1 < i2)
      | _ -> raise (RuntimeError "Non-integer argument to <")) 
  | Equal (e1, e2) ->
    let v1 = interpret e1 in
    let v2 = interpret e2 in
    (match (v1, v2) with
      | (VInt i1, VInt i2) -> VBool (i1 = i2)
      | _ -> raise (RuntimeError "Non-integer argument to =")) 
  | Or (e1, e2) -> 
    let v1 = interpret e1 in
    let v2 = interpret e2 in
    (match (v1, v2) with
      | (VBool i1, VBool i2) -> VBool (i1 || i2)
      | _ -> raise (RuntimeError "Non-bool argument to or")) 
  | And (e1, e2) -> 
    let v1 = interpret e1 in
    let v2 = interpret e2 in
    (match (v1, v2) with
      | (VBool i1, VBool i2) -> VBool (i1 && i2)
      | _ -> raise (RuntimeError "Non-bool argument to &&")) 
  | Nott e1 -> 
    let v1 = interpret e1 in
    (match v1 with
      | VBool i1 -> VBool (not i1) 
      | _ -> raise (RuntimeError "Non-bool argument to not")) 
  | Int i -> VInt i
  | Id s -> VStr s 
  | Truee -> VBool true 
  | Falsee -> VBool false 
  | Lett (str, e1, e2) ->
    let v1 = interpret e1 in
    let v2 = interpret (subst str e1 e2) in 
    (match (v1,v2) with 
    | (_, VInt i2) -> VInt i2 
    | _ -> raise (RuntimeError "Non-integer argument to let")) 
    

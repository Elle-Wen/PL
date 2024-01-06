open Ast
type value = 
          | VInt of int
          | VString of string
          | VBool of bool
          | VUnit
          | VUser of string * value list 
          | VClosure of string * (string * value) list * expr * string option
          | VTuple of value list
          | VConstructor of string
          | VBuildin of string  

and eval_context = (string * value) list

let define_fun_helper (param_lst: param list) (e: expr) (ctx: eval_context): value = 
  match param_lst with
    | [param] -> (match param with
                    | TyParam (str, _) -> VClosure (str, ctx, e, None)
                    | UTyParam str -> VClosure (str, ctx, e, None))
    | curr :: rest -> (match curr with
                        | TyParam (str, _) -> VClosure (str, ctx, FunExpr (rest, None, e), None)
                        | UTyParam str -> VClosure (str, ctx, FunExpr (rest, None, e), None))
    | [] -> failwith "Empty parameter list"

let rec_define_fun_helper (param_lst : param list) (e: expr) (name: string) (ctx: eval_context): value = 
  match param_lst with
    | [param] -> (match param with
                    | TyParam (str, _) -> VClosure (str, ctx, e, Some name)
                    | UTyParam str -> VClosure (str, ctx, e, Some name))
    | curr :: rest -> (match curr with
                        | TyParam (str, _) -> VClosure (str, ctx, FunExpr (rest, None, e), Some name)
                        | UTyParam str -> VClosure (str, ctx, FunExpr (rest, None, e), Some name))
    | [] -> failwith "Empty parameter list"

let rec expr_eval (ctx: eval_context) (e: expr) : value = 
  match e with 
  | LetExpr (str, paramlst, _, e1, e2) -> (match paramlst with
                                              | [] -> let value = expr_eval ctx e1 in 
                                                expr_eval ((str, value)::ctx) e2
                                              | _ -> let value = define_fun_helper paramlst e1 ctx in 
                                                expr_eval ((str, value)::ctx) e2)
  | LetRecExpr (str, paramlst, _ , e1, e2) -> let value = rec_define_fun_helper paramlst e1 str ctx in 
                                                expr_eval ((str, value)::ctx) e2
  | IfExpr (e1, e2, e3) -> (match expr_eval ctx e1 with 
                            | VBool b -> if b then expr_eval ctx e2 else expr_eval ctx e3
                            | _ -> failwith "Non-bool argument to if")
  | FunExpr (param_lst, _ , e1) ->  define_fun_helper param_lst e1 ctx 
  | ExprExpr (e1,e2) -> let v1 = expr_eval ctx e2 in 
                        (match expr_eval ctx e1 with
                          | VClosure (x, func_context, e3, None)-> expr_eval ((x, v1)::func_context) e3 
                          | VClosure (x, func_context, e3, Some name) -> expr_eval ((name, VClosure (x, func_context, e3, Some name))::(x, v1)::func_context) e3
                          | VConstructor id -> (match v1 with 
                                                  | VTuple val_lst -> VUser (id, val_lst)
                                                  | single_arg -> VUser (id, [single_arg])
                                                  ) (*v1 is VTuple*) 
                          | VBuildin id -> (match id with 
                                            | "print_string" -> print_string (match v1 with 
                                                                            | VString s -> s
                                                                            | _ -> failwith "Non-string argument to print_string"); VUnit
                                            | "int_of_string" -> (match v1 with 
                                                                    | VString s -> VInt (int_of_string s)
                                                                    | _ -> failwith "Non-string argument to int_of_string")
                                            | "string_of_int" -> (match v1 with 
                                                                    | VInt i -> VString (string_of_int i)
                                                                    | _ -> failwith "Non-int argument to string_of_int")
                                            | _ -> failwith "Undefined buildin function")
                          | _ -> failwith "function's value should be VClosure")
  | CommaExpr (expr_lst) ->  VTuple (List.map (expr_eval ctx) expr_lst)
  | ComputeExpr (e1,op, e2) -> (match op with 
                                | PlusOp -> (match expr_eval ctx e1, expr_eval ctx e2 with 
                                              | VInt i1, VInt i2 -> VInt (i1 + i2)
                                              | _ -> failwith "Non-int argument to +")
                                | MinusOp -> (match expr_eval ctx e1, expr_eval ctx e2 with 
                                              | VInt i1, VInt i2 -> VInt (i1 - i2)
                                              | _ -> failwith "Non-int argument to -")
                                | TimesOp -> (match expr_eval ctx e1, expr_eval ctx e2 with 
                                              | VInt i1, VInt i2 -> VInt (i1 * i2)
                                              | _ -> failwith "Non-int argument to *")
                                | DivideOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VInt i1, VInt i2 -> VInt (i1 / i2)
                                              | _ -> failwith "Non-int argument to /")
                                | ModOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VInt i1, VInt i2 -> VInt (i1 mod i2)
                                              | _ -> failwith "Non-int argument to mod")
                                | LessOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VInt i1, VInt i2 -> VBool (i1 < i2)
                                              | _ -> failwith "Non-int argument to <")
                                | EqOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VInt i1, VInt i2 -> VBool (i1 = i2)
                                              | _ -> failwith "Non-int argument to =")
                                | ExpOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VString i1, VString i2 -> VString (i1 ^ i2)
                                              | _ -> failwith "Non-int argument to **")
                                | AndOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VBool b1, VBool b2 -> VBool (b1 && b2)
                                              | _ -> failwith "Non-bool argument to &&")
                                | OrOp -> (match expr_eval ctx e1, expr_eval ctx e2 with
                                              | VBool b1, VBool b2 -> VBool (b1 || b2)
                                              | _ -> failwith "Non-bool argument to ||"))
  | NotExpr (op, e1) -> (match op with 
                        | NotOp -> (match expr_eval ctx e1 with 
                                    | VBool b -> VBool (not b)
                                    | _ -> failwith "Non-bool argument to not")
                        | NOp -> (match expr_eval ctx e1 with 
                                    | VInt i -> VInt (-i)
                                    | _ -> failwith "Non-int argument to -"))
  | IntExpr i -> VInt i 
  | TrueExpr -> VBool true
  | FalseExpr -> VBool false
  | StrExpr s -> VString s
  | VarExpr s -> (match List.assoc_opt s ctx with
                  | None -> failwith "Unbound variable"
                  | Some v -> v)
  | BracketExpr -> VUnit 
  | MatchExpr (e1, branch_lst) -> let v1 = expr_eval ctx e1 in match_helper v1 branch_lst ctx 

and match_helper (v: value) (branch_lst: match_branch list) (ctx: eval_context) : value =
  match branch_lst with
  | [] -> failwith "No matching pattern"
  | MatchBranch (id, args, e1):: rest -> (match v with
                                          | VUser (constr, values) when constr = id -> 
                                              (match args with
                                                | None -> expr_eval ctx e1
                                                | Some pattern_vars -> 
                                                  (match pattern_vars with 
                                                    |PatternVars str_lst -> let new_context = (List.combine str_lst values)@ctx in 
                                                      expr_eval new_context e1))
                                          | _ -> match_helper v rest ctx)

let rec add_type_to_context (ctx: eval_context) (id: string) (lst: (string * typee option) list) : eval_context = 
    match lst with 
    | [] -> ctx
    | (id1, ty) :: rest -> (match ty with
                              | None -> add_type_to_context ((id1, VUser (id1, []))::ctx) id rest
                              | Some _ -> add_type_to_context ((id1, VConstructor id)::ctx) id rest)

let add_let_to_context (ctx: eval_context) (id1: string) (params: param list) (body: expr) : eval_context =
  (match params with
    | [] -> let value = expr_eval ctx body in 
      (id1, value)::ctx
    | _ -> let value = define_fun_helper params body ctx in 
      (id1, value)::ctx) 

let add_letrec_to_context (ctx: eval_context) (id1: string) (params: param list) (body: expr) : eval_context =
  let value = rec_define_fun_helper params body id1 ctx in 
    (id1, value)::ctx

let rec interpret_program_helper (p: program) (ctx: eval_context): unit = 
  match p with 
  | [] -> ()
  | TyDef (id, lst) :: rest -> let new_context = add_type_to_context ctx id lst in interpret_program_helper rest new_context
  | LetDef (id1, params, _ , body) :: rest -> let new_context = add_let_to_context ctx id1 params body in interpret_program_helper rest new_context
  | LetRecDef (id1, params, _ , body) :: rest -> let new_context = add_letrec_to_context ctx id1 params body in interpret_program_helper rest new_context

let interpret_program (p: program) : unit = 
  interpret_program_helper p ["int_of_string", VBuildin "int_of_string"; "string_of_int", VBuildin "string_of_int"; "print_string", VBuildin "print_string"]
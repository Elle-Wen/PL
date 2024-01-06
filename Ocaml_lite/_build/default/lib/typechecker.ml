open Ast
exception TypeError of string
type substitution = (string * typee) list
(*context has type (string * typee) list *)
(*constraint has type (typee list) list [[a,b],[c,d]]*) 

(*
   1. still pass let _ = fun x => let y = x + 1 in x ();;?
   
*)


let next_var = ref 0

let fresh_var (_ : unit) : string =
  let () = next_var := !next_var + 1 in
  "x$" ^ string_of_int !next_var

let rec type_lookup (context: (string * typee) list ) (id: string) : typee = 
    match context with 
    | [] -> raise (TypeError "type not found")
    | (id1, ty) :: rest -> if id1 = id then ty else type_lookup rest id

let rec tc_expr (context: (string * typee) list ) (e: expr) (cs: (typee list) list): typee * (typee list) list = 
  (match e with
  | IfExpr (e1,e2,e3) -> let (t1, cs1) = tc_expr context e1 cs in 
                          let (t2, cs2) = tc_expr context e2 cs in
                          let (t3, cs3) = tc_expr context e3 cs in
                          (t2, [t1;BoolType] :: [t2;t3] :: cs1 @ cs2 @ cs3)
  | VarExpr id -> (type_lookup context id, cs )
  | IntExpr _ -> (IntType, cs)
  | TrueExpr -> (BoolType, cs)
  | FalseExpr -> (BoolType, cs)
  | StrExpr _ -> (StringType, cs)
  | BracketExpr -> (UnitType, cs) 
  | ComputeExpr (e1, op, e2) -> let (t1, cs1) = tc_expr context e1 cs in
                                let (t2, cs2) = tc_expr context e2 cs in 
                                (match op with 
                                | PlusOp -> (IntType, [t1;IntType]::[t2;IntType] :: cs1 @ cs2)
                                | MinusOp -> (IntType, [t1;IntType]::[t2;IntType] :: cs1 @ cs2)
                                | TimesOp -> (IntType, [t1;IntType]::[t2;IntType]:: cs1 @ cs2)
                                | DivideOp -> (IntType, [t1;IntType]::[t2;IntType] :: cs1 @ cs2)
                                | ModOp -> (IntType, [t1;IntType]::[t2;IntType] :: cs1 @ cs2)
                                | EqOp -> (BoolType, [t1;t2] :: cs1 @ cs2)  
                                | LessOp -> (BoolType, [t1;IntType]::[t2;IntType] :: cs1 @ cs2)     
                                | ExpOp -> (StringType, [t1;StringType]::[t2;StringType] :: cs1 @ cs2)
                                | AndOp -> (BoolType, [t1;BoolType]::[t2;BoolType] :: cs1 @ cs2)
                                | OrOp -> (BoolType, [t1;BoolType]::[t2;BoolType] :: cs1 @ cs2))
  | NotExpr (uop, e1) -> let (t1, cs1) = tc_expr context e1 cs in 
                                (match uop with
                                | NotOp -> (BoolType, [t1;BoolType] :: cs1) 
                                | NOp -> (IntType, [t1;IntType] :: cs1))
  | LetExpr (id, parameters, tp, e1,e2)-> let (param_context, param_cs) = param_map_helper parameters cs in 
                                            let (new_context, new_cs) = add_let_to_context id parameters tp e1 (context@param_context) in 
                                              tc_expr new_context e2 (param_cs@new_cs)
  | LetRecExpr (id, parameters, tp, e1, e2) -> let new_type = FreshType (fresh_var()) in
                                                 let (param_context, param_cs) = param_map_helper parameters cs in
                                                 let (new_context,new_cs) = add_let_to_context id parameters tp e1 (((id, new_type):: param_context)@context) in 
                                                 tc_expr new_context e2 (param_cs@new_cs)
  | FunExpr (idlst, None, e1) ->  let (new_piece_context, new_cs) = param_map_helper idlst cs in 
                                    let just_type_variables = extract_second new_piece_context in 
                                    let (t1, cs1) = tc_expr (new_piece_context @ context) e1 new_cs in
                                    ((List.fold_right (fun a acc -> ToType (a,acc)) just_type_variables t1), cs1)
  | FunExpr (idlst, Some tp, e1) -> let (new_piece_context, new_cs) = param_map_helper idlst cs in 
                                      let just_type_variables = extract_second new_piece_context in 
                                      let (t1, cs1) = tc_expr (new_piece_context @ context) e1 new_cs in
                                      ((List.fold_right (fun a b -> ToType (a,b)) just_type_variables t1), [tp;t1]::cs1)
  | ExprExpr (e1, e2) -> let (t1, cs1) = tc_expr context e1 cs in 
                          let (t2, cs2) = tc_expr context e2 cs in 
                          let new_var = fresh_var() in 
                          (FreshType new_var, [t1; ToType (t2, FreshType new_var)] :: cs1 @ cs2) 
  | CommaExpr explst -> tc_expr_tuple_expr_helper context explst cs 
  | MatchExpr (e1, patlst) -> 
                              let (t1, cs1) = tc_expr context e1 cs in 
                              let (cs11, cs22) = tc_expr_match_expr_recurse patlst context cs1 in 
                              (List.hd cs22 , split_list_to_pairs_of_list (t1::cs11) @ split_list_to_pairs_of_list cs22 @ cs1) (* [[list of cs for patterns],[list of cs for expressions]]*)
                                )
and extract_second (context: (string * typee) list) : typee list =
  match context with 
  | [] -> []
  | (_, ty) :: rest -> ty :: extract_second rest

and param_map_helper (idlst: param list) (cs: (typee list) list) : (string * typee) list *  (typee list) list=  (*return a list of new context and a list of new cs*)
  match idlst with 
  | [] -> ([],[])
  | curr::rest -> let new_type = FreshType (fresh_var ()) in 
                  (match curr with 
                  | TyParam (id, ty) -> ((id, new_type) :: fst (param_map_helper rest cs), [new_type;ty]::cs) 
                  | UTyParam id -> ((id, new_type) :: fst (param_map_helper rest cs), cs))
and tc_expr_match_expr_recurse (patlst: match_branch list) (context: (string * typee) list) (cs: (typee list)list) : typee list * typee list = 
  match patlst with 
  | [] -> ([], [])
  | curr :: rest -> let (t1, t2) = tc_expr_match_expr_helper curr context cs in 
                    let (t3, t4) = tc_expr_match_expr_recurse rest context cs in 
                    (t1 :: t3, t2 :: t4)
and split_list_to_pairs_of_list (ls:typee list): (typee list) list = (* to convert a list of equivalent cs to list of 2 equivalent cs*)
  match ls with 
  | a ::( b :: rest) -> [a;b] :: split_list_to_pairs_of_list (b::rest)
  | _ -> []

and tc_expr_match_expr_helper (mb: match_branch) (context: (string * typee) list) (cs: (typee list)list) : (typee * typee ) = (*for individual branch*)
    (match mb with
    | MatchBranch(id, pattern_var, e1) ->  let tp_str = type_lookup context id in 
                                              (match tp_str with 
                                              | VarType id -> (VarType id, fst (tc_expr context e1 cs)) 
                                              | ToType(x, user_defined)-> (match pattern_var with 
                                                                          |None -> raise (TypeError "match expr shoud not have input to this constructor")
                                                                          |Some actual_pattern_var -> (match actual_pattern_var with
                                                                                                        |PatternVars str_lst -> (match x with
                                                                                                                                | TimesType ty_lst -> let new_context = return_new_context str_lst ty_lst in 
                                                                                                                                    user_defined,fst (tc_expr (new_context@context) e1 cs) (* return type of pattern, type of e1*)
                                                                                                                                | single_arg -> let new_context = return_new_context str_lst [single_arg] in 
                                                                                                                                    user_defined,fst (tc_expr (new_context@context) e1 cs)) (*single variable constructor*)
                                                                                                        ))
                                              | _ -> raise (TypeError "match expr is wrong")))
                                              
and return_new_context (str_lst: string list) (ty_lst: typee list) : (string * typee) list = 
  List.map2 (fun a b -> (a, b)) str_lst ty_lst

and add_let_to_context (id1: string) (params: param list) (ty: typee option) (body: expr) (context: (string * typee) list ) : (string * typee) list * (typee list) list =
   let (extra_context, new_cs) = param_map_helper params [] in 
          let new_context = extra_context @ context in
            (match ty with 
              | None -> let (t1, cs1) = tc_expr new_context body new_cs in 
                let sigma = unify [] cs1 in 
                  (match params with
                    | [] -> let unified_context = unify_context sigma new_context in
                              let generalized_t1 = generalize unified_context (subs_single_type sigma t1) in 
                                ((id1, generalized_t1) :: unified_context, cs1 )
                    | _ -> let new_t1 = List.fold_right (fun a b -> ToType (a,b)) (extract_second extra_context) t1 in 
                            let unified_context = unify_context sigma new_context in
                              let generalized_t1 = generalize unified_context (subs_single_type sigma new_t1) in 
                                ((id1, generalized_t1) :: unified_context), cs1 )
              | Some tp ->  let (t1, cs1) = tc_expr new_context body new_cs in 
                let sigma = unify [] ([tp;t1]::cs1) in 
                (match params with
                | [] -> let unified_context = unify_context sigma new_context in
                          let generalized_t1 = generalize unified_context (subs_single_type sigma t1) in 
                            ((id1, generalized_t1) :: unified_context , [tp;t1]::cs1)
                | _ -> let new_t1 = List.fold_right (fun a b -> ToType (a,b)) (extract_second extra_context) t1 in 
                        let unified_context = unify_context sigma new_context in
                          let generalized_t1 = generalize unified_context (subs_single_type sigma new_t1) in 
                            ((id1, generalized_t1) :: unified_context),[tp;t1]::cs1))

and add_letrec_to_context (id1: string) (params: param list) (ty: typee option) (body: expr) (context: (string * typee) list ) : (string * typee) list =
  let (extra_context, new_cs) = param_map_helper params [] in 
  let new_type = FreshType (fresh_var()) in
  let new_context = (id1, new_type)::extra_context @ context in
  (match ty with 
    | None -> let (t1, cs1) = tc_expr new_context body new_cs in 
        let sigma = unify [] cs1 in 
          let unified_context = unify_context sigma new_context in
          let generalized_t1 = generalize unified_context (subs_single_type sigma t1) in 
            (id1, List.fold_right (fun a b -> ToType (a,b)) (extract_second extra_context) generalized_t1) :: unified_context
    | Some tp ->  let (t1, cs1) = tc_expr new_context body new_cs in 
      let sigma = unify [] ([tp;t1]::cs1) in 
      let unified_context = unify_context sigma new_context in
        let generalized_t1 = generalize unified_context (subs_single_type sigma t1) in 
          (id1, List.fold_right (fun a b -> ToType (a,b)) (extract_second extra_context) generalized_t1) :: unified_context)

and generalize (context: (string * typee) list) (tp: typee) = 
  let free_var_type = collect_free_var_type tp in
  let target_var = List.filter (fun s -> not (List.exists (fun (t, _) -> t = s) context)) free_var_type in 
  List.fold_right (fun var acc -> ForAllType(var, acc)) target_var tp

and collect_free_var_type (t: typee) : string list= 
  match t with
  | FreshType var -> [var]  (* A single type variable is free by itself *)
  | ToType (arg, ret) -> 
      List.append (collect_free_var_type arg) (collect_free_var_type ret)  (* Recursively find free vars in argument and return types *)
  | TimesType types -> 
      List.flatten (List.map collect_free_var_type types)  (* Recursively find free vars in each type of the tuple *)
  | ForAllType (var, t') -> 
      List.filter (fun v -> v <> var) (collect_free_var_type t')  (* Exclude the quantified variable *)
  | _ -> []  (* Base types and other cases without type variables *)

and tc_expr_tuple_expr_helper (context: (string * typee) list) (explst: expr list) (cs: (typee list) list): typee * (typee list) list = 
  match explst with  
  | [] -> (TimesType [], cs) 
  | e :: rest -> 
      let (t1, cs1) = tc_expr context e cs in 
      let (t2, cs2) = tc_expr_tuple_expr_helper context rest cs1 in 
      (match t2 with 
      | TimesType lst -> (TimesType (t1 :: lst), cs1 @ cs2)
      | _ -> raise (TypeError "tuple type is wrong")
      )

and unify (subst: substitution) (constraints: (typee list) list) : substitution = 
  (match constraints with
  | [] -> subst 
  | cs :: rest -> (match cs with 
                  |[t1;t2]-> let (new_cs, new_sub) = unify_single t1 t2 in 
                              let new_cs_after_sub = apply_substitution new_sub (new_cs@rest) in 
                              unify (subst@new_sub) new_cs_after_sub 
                  | _ -> raise (TypeError "each constraint shoud be a list of two elements") ))

and unify_context (subst: substitution) (context: (string * typee) list) : (string * typee) list = 
  match context with 
  | [] -> context 
  | (id, ty) :: rest -> (id, subs_single_type subst ty) :: unify_context subst rest

and subs_single_type (subst: substitution) (tp: typee) : typee = (* take a list of subst and a type, return a type after applying the subst*)
  match subst with
  | [] -> tp
  | (str,tpp)::rest -> subs_single_type rest (replace_type_var str tpp tp)

and apply_substitution (subst: substitution) (cs: (typee list) list) : (typee list) list = (* apply a single subst to a list of cs, return a new cs *)
  match subst with 
  | [] -> cs 
  | [(c,d)] -> apply_substitution_helper c d cs
  | _ -> raise (TypeError "subst should be a single subst")

and apply_substitution_helper (a: string) (t: typee) (cs: (typee list) list) = (* apply subst to a cs, return a new cs *)
    match cs with
    | [c;d]::rest -> [replace_type_var a t c; replace_type_var a t d] :: apply_substitution_helper a t rest
    | [] -> cs 
    | _ -> raise (TypeError "unify_single should return a single new cs")

and replace_type_var (var:string) (fresh_var:typee) (tp:typee) : typee = (* replace all occurence of var to be fresh_var in tp*)
  match tp with 
| ToType (arg, ret) -> ToType (replace_type_var var fresh_var arg, replace_type_var var fresh_var ret)
| FreshType v -> if v = var then fresh_var else FreshType v
| TimesType d -> TimesType (List.map (fun x -> replace_type_var var fresh_var x) d)
| t -> t 

and unify_single (t1: typee) (t2: typee): (typee list) list * substitution = (*return a cs and a sub*)
  match (t1, t2) with
  | (FreshType var1, FreshType var2) ->
      if var1 = var2 then ([],[]) (* No substitution needed for identical variables *)
      else ([],[(var1, t2)]) (* Substitute var1 with var2 *)
  | (FreshType var, _) ->
      if occurs_check var t2 then raise (TypeError "Infinite type detected")
      else ([],[(var, t2)])
  | (_, FreshType var) ->
      if occurs_check var t1 then raise (TypeError "Infinite type detected")
      else ([],[(var, t1)])
  | (ToType (arg1, ret1), ToType (arg2, ret2)) ->
      (* Unify argument types and return types separately *)
      ([[arg1;arg2] ; [ret1;ret2]] , [])
  | (TimesType types1, TimesType types2) when List.length types1 = List.length types2 ->
      (* Unify corresponding elements of the tuples *)
      (List.map2 (fun a b -> [a;b]) types1 types2,[])
  | (IntType, IntType) | (BoolType, BoolType) | (StringType, StringType) | (UnitType, UnitType) ->
      ([],[]) (* Base types match, no substitution needed *)
  | (ForAllType (var,tp), t ) | (t, ForAllType (var,tp))-> 
    (* Replace the quantified variable with a fresh variable *)
    let fresh_var = FreshType (fresh_var ()) in
    let new_body = replace_type_var var fresh_var tp in 
    ([[t; new_body]],[]) 
  | (a,b) -> if a = b then ([],[]) else raise (TypeError "Types cannot be unified")

and occurs_check (var: string) (t: typee) : bool =
  match t with
  | FreshType v -> v = var
  | ToType (arg, ret) -> occurs_check var arg || occurs_check var ret
  | TimesType types -> List.exists (occurs_check var) types
  | _ -> false

let rec add_type_to_context (id1: string) (type_list: (string * typee option ) list ) (context: (string * typee) list ) : (string * typee) list =
  match type_list with 
  | [] -> context
  | (id2, None) :: rest -> add_type_to_context id1 rest ((id2, VarType id1) :: context)
  | (id3, Some ty) :: rest -> add_type_to_context id1 rest ((id3, ToType (ty, VarType id1)) :: context)

let rec tc_prog_helper (context: (string * typee) list ) (p: program) =
  match p with 
  | [] -> ()
  | TyDef (id1, lst) :: rest -> let context1 = add_type_to_context id1 lst context in tc_prog_helper context1 rest 
  | LetDef (id1, params, ty, body) :: rest -> let context1 = fst (add_let_to_context id1 params ty body context) in tc_prog_helper context1 rest 
  | LetRecDef (id1, params, ty, body) :: rest -> let context1 = add_letrec_to_context id1 params ty body context in tc_prog_helper context1 rest 

let tc_prog (p: program) : unit = 
  tc_prog_helper [("int_of_string", ToType (StringType, IntType));("string_of_int", ToType (IntType, StringType));("print_string", ToType (StringType, UnitType))] p 
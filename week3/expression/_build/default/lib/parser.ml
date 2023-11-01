open Lexer

exception ParseError of string

type expr =
  | Add of expr * expr
  | Mul of expr * expr
  | Int of int
  | Sub of expr * expr 
  | Div of expr * expr 
  | Modd of expr * expr 
  | Less of expr * expr 
  | Equal of expr * expr 
  | Or of expr * expr 
  | And of expr * expr 
  | Nott of expr 
  | Id of string 
  | Iff of expr * expr * expr 
  | Lett of string * expr * expr 
  | Truee
  | Falsee

let rec print_expr : expr -> string = function
  | Add (e1, e2) -> "(" ^ print_expr e1 ^ ") + (" ^ print_expr e2 ^ ")"
  | Mul (e1, e2) -> "(" ^ print_expr e1 ^ ") * (" ^ print_expr e2 ^ ")"
  | Int i -> string_of_int i
  | Sub (e1, e2) -> "(" ^ print_expr e1 ^ ") - (" ^ print_expr e2 ^ ")"
  | Div (e1, e2) -> "(" ^ print_expr e1 ^ ") / (" ^ print_expr e2 ^ ")"
  | Modd (e1, e2) -> "(" ^ print_expr e1 ^ ") mod (" ^ print_expr e2 ^ ")"
  | Less (e1, e2) -> "(" ^ print_expr e1 ^ ") < (" ^ print_expr e2 ^ ")"
  | Equal (e1, e2) -> "(" ^ print_expr e1 ^ ") = (" ^ print_expr e2 ^ ")"
  | Or (e1, e2) -> "(" ^ print_expr e1 ^ ") | (" ^ print_expr e2 ^ ")"
  | And (e1, e2) -> "(" ^ print_expr e1 ^ ") & (" ^ print_expr e2 ^ ")"
  | Nott e1 -> "( not" ^ print_expr e1 ^ ") " 
  | Id str -> str
  | Iff (e1, e2, e3) -> "( if" ^ print_expr e1 ^ "then" ^ print_expr e2 ^ "else" ^ print_expr e3 ^ ")"
  | Lett (s,e1,e2) -> "( Let" ^ s ^ "=" ^ print_expr e1 ^ "in" ^ print_expr e2 ^ ")"
  | Truee -> "true"
  | Falsee -> "false"

(* All of the parsing functions here have type
   token list -> expr * token list. The idea here is that the function takes a
   stream of tokens, parses whatever it's supposed to parse off the front and
   returns that expression along with the rest of the token list which was not
   consumed. For example,

   bexpr [Lit 5; Plus; Lit 3] = (Int 5, [Plus; Lit 3])

   because the bexpr nonterminal parses an integer. The remaining tokens, Plus
   and Lit 3 are just returned. Similarly,

   mexpr [Lit 4; Times; Lit 2; Plus; Lit 1] =
       (Mul (Int 4, Int 2), [Plus; Lit 1])
  *)
  (*
let rec ilexpr (s : token list): expr * token list = (*if and let*)
  let rec help_e1 = function (*if e1 then e2 else e3, given whole expression list, extract e1*)
    | [] -> []
    | Then :: _ -> [] 
    | h :: t -> h :: help_e1 t in 
  let after_then = function (*find lists after Then*)
    | Then :: r -> r 
    | _ -> [] in 
  let rec help_e2 = function (*extract e2*)
    | [] -> []
    | Else :: _ -> [] 
    | h :: t -> h :: help_e2 t in 
  let after_else = function (*extract e3*)
    | Else :: r -> r 
    | _ -> [] in 
  let rec help_s = function (*let s = e1 in e2, extract s*)
    | [] -> []
    | Dash :: _ -> [] 
    | h :: t -> h :: help_s t in 
  let after_eq = function (*find lists after =*)
    | Dash :: r -> r 
    | _ -> [] in 
  let rec help_e11 = function (*extract e1*)
    | [] -> []
    | In :: _ -> [] 
    | h :: t -> h :: help_e11 t in 
  let after_in = function (*extract e2*)
    | In :: r -> r 
    | _ -> [] in 
  match s with 
    | If :: r -> Iff (fst (oexpr (help_e1 s)), fst (oexpr (help_e2 (after_then s))), fst (oexpr (after_else s)))
    | Let :: r -> let (e,q) = oexpr (Lett (help_s s, help_e11 (after_eq s), after_in)) in (Lett e,)
    | _ -> oexpr s *)

let rec ilexpr (s : token list): expr * token list = (*if and let*)
  (match s with 
  | If :: r -> let (e1, rest1) = ilexpr r in (match rest1 with 
    | Then :: r2 -> let (e2, rest2) = ilexpr r2 in (match rest2 with 
      | Else :: r3 -> let (e3, rest3) = ilexpr r3 in
      (Iff (e1, e2, e3), rest3)
      | _ -> raise (ParseError("Else expected"))) 
    | _ -> raise (ParseError("Then expected")))
  | Let :: Var s :: Eq :: r -> let (e11, rest11) = ilexpr r in
    (match rest11 with
    | In :: r22 ->
      let (e22, rest22) = ilexpr r22 in
      (Lett (s, e11, e22), rest22)
    | _ -> raise (ParseError "Expected 'in'"))
  | _ -> oexpr s ) 
and oexpr (s : token list) : expr * token list = (*or*)
  let rec help ex = function 
    | Pipe :: r -> 
      let (e, rest) = aexpr r in 
      help (Or (ex, e)) rest 
    | ts -> (ex, ts) in 
      let (e, r) = aexpr s in 
      help e r 
and aexpr (s : token list) : expr * token list = (*and*)
  let rec help ex = function 
  | Amp :: r -> 
    let (e, rest) = cexpr r in 
    help (And (ex, e)) rest 
  | ts -> (ex, ts) in 
    let (e, r) = cexpr s in 
    help e r 
and cexpr (s : token list) : expr * token list = (*compare*)
  let rec help ex = function 
  | LAngle :: r -> 
    let (e, rest) = parse_expr r in 
    help (Less (ex, e)) rest 
  | Eq :: r -> 
    let (e, rest) = parse_expr r in 
    help (Equal (ex, e)) rest 
  | ts -> (ex, ts) in 
    let (e, r) = parse_expr s in 
    help e r 
and parse_expr (s : token list) : expr * token list = (*add sub*)
  let rec help ex = function
    | Plus :: r ->
      let (e, rest) = mexpr r in
      help (Add (ex, e)) rest
    | Dash :: r -> 
      let (e, rest) = mexpr r in 
      help (Sub (ex, e)) rest 
    | ts -> (ex, ts) in
      let (e, r) = mexpr s in
      help e r
and mexpr (s : token list) : expr * token list = (*mul div mod*)
  let rec help ex = function
    | Star :: r ->
      let (e, rest) = nexpr r in
      help (Mul (ex, e)) rest
    | Slash :: r ->
      let (e, rest) = nexpr r in
      help (Div (ex, e)) rest
    | Mod :: r ->
      let (e, rest) = nexpr r in
      help (Modd (ex, e)) rest
    | ts -> (ex, ts) in
      let (e, r) = nexpr s in
      help e r 
and nexpr (s : token list) : expr * token list = (*not*)
  match s with 
  | Not :: r -> 
    let (e, r ) = bexpr r in 
    (Nott e,r) 
  | _ ->  bexpr s 
    
and bexpr : token list -> expr * token list = function (* id, int, true, false, (expr) *)
  | LParen :: r ->
    let (e, r2) = parse_expr r in
    (match r2 with
     | RParen :: rest -> (e, rest)
     | [] -> raise (ParseError "Expected ), got end of input")
     | t :: _ -> raise (ParseError ("Expected ), got " ^ tok_to_str t)))
  | Lit i :: r -> (Int i, r)
  | Var s :: r -> (Id s, r)
  | True :: r -> (Truee, r)
  | False :: r -> (Falsee, r)
  | [] -> raise (ParseError "Expected <int> or (, got end of input")
  | t :: _ -> raise (ParseError ("Expected <int> or (, got " ^ tok_to_str t))

let parse (src : token list) : expr =
  match parse_expr src with
  | (e, []) -> e
  | (_, t :: _) -> raise (ParseError
                            ("Expected end of input, got " ^ tok_to_str t))

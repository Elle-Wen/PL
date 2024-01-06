(* AST type for ocaml lite *) 

type typee = 
  | ToType of typee * typee (*<type> ::= <type> -> <type>*)
  (*| ( <type> )*)
  | TimesType of typee list (*| <type> * <type> be careful!! distinguish int * int * int vs. (int * int)* int vs. int * (int * int) *)
  | IntType (*$int*)
  | BoolType (*$bool*)
  | StringType (*$string*)
  | UnitType (*$unit*)
  | VarType of string (*$id*)
  | FreshType of string 
  | ForAllType of string * typee
type param = 
  | TyParam of string * typee (*<param> ::= $id [: <type>]*) 
  | UTyParam of string (*<param> ::= $id*)

type binop = 
  | PlusOp (*+*)
  | MinusOp (*-*)
  | TimesOp (* * *)
  | DivideOp (* / *)
  | ModOp (* % *)
  | LessOp (* < *)
  | EqOp (* = *)
  | ExpOp (* ^ *)
  | AndOp (* && *)
  | OrOp (* || *) 

type unop = 
  | NOp (* ~ *)
  | NotOp (* not *)
  
type pattern_vars = 
  | PatternVars of string list (*<pattern_vars> ::= $id [, $id]+*)
  (*$id*)

type expr = 
  | LetExpr of string * param list * typee option * expr * expr (*<expr> ::= let $id [<param>]* [: <type>] = <expr> in <expr>*)
  | LetRecExpr of string * param list * typee option * expr * expr (*| let rec $id [<param>]* [: <type>] = <expr> in <expr>*)
  | IfExpr of expr * expr * expr (*| if <expr> then <expr> else <expr>*)
  | FunExpr of param list * typee option * expr (*| fun [<param>]+ [: <type>] => <expr>*)
  | ExprExpr of expr * expr (*| <expr> <expr> *) (*????? expr list*)
  | CommaExpr of expr list (*| ( <expr> [, <expr>]+ )*)
  | ComputeExpr of expr * binop * expr (*| <expr> <binop> <expr>*)
  | NotExpr of unop * expr (*| <unop> <expr>*)
  (*| ( <expr> )*)
  | IntExpr of int (*$int*)
  | TrueExpr (*$true*)
  | FalseExpr (*$false*)
  | StrExpr of string (*$str*)
  | VarExpr of string (*$id*)
  | BracketExpr (*| ( )*)
  | MatchExpr of expr * match_branch list (*| match <expr> with ['|' <match_branch>]+*)

and match_branch =
  | MatchBranch of string * pattern_vars option * expr (*<match_branch> ::= $id [<pattern_vars>] => <expr>*)

type binding = 
  | TyDef of string * (string * typee option ) list (* | type $id = ['|' $id [of <type>]]+*)
  | LetDef of string * param list * typee option * expr (*<binding> ::= let $id [<param>]* [: <type>] = <expr>*)
  | LetRecDef of string * param list * typee option * expr (*| let rec $id [<param>]* [: <type>] = <expr>*)
  
type program = 
  binding list  (*<program> ::= [<binding> ;;]+*)

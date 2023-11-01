
(* The type of tokens. *)

type token = 
  | Var of (string)
  | Unit_ty
  | Semicolon
  | RParen
  | Lambda
  | LParen
  | Int_ty
  | Equal
  | EOF
  | Dot
  | Colon
  | Bool_ty
  | Arrow

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val start: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.lc_expr)

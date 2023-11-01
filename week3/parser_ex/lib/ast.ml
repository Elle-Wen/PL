type p_type = IntTy | BoolTy | StringTy

type argument = {
  name : string;
  ty : p_type;
}

type expr =
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr
  | Conj of expr * expr
  | Disj of expr * expr
  | Neg of expr
  | Eq of expr * expr
  | Less of expr * expr
  | Apply of string * expr list
  | Var of string
  | CInt of int
  | CString of string
  | CBool of bool

type statement =
  | Ret of expr
  | WhileLoop of expr * statement
  | IfElse of expr * statement * statement
  | Assign of string * expr
  | Nop
  | Block of statement list

type definition = {
  ret_type : p_type;
  name : string;
  args : argument list;
  code : statement list;
}

type program = definition list

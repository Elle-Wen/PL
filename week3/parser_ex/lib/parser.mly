%{

open Ast

%}

%token <int> Int
%token <string> String
%token <string> Id
%token LParen
%token RParen
%token LBrace
%token RBrace
%token TInt
%token TBool
%token TString
%token Comma
%token Semi
%token Return
%token While
%token If
%token Else
%token Skip
%token Equal
%token Plus
%token Times
%token Minus
%token Divide
%token And
%token Or
%token Not
%token DoubleEq
%token Lt
%token True
%token False
%token EOF

%start <program> start

%type <program> program
%type <definition> definition
%type <p_type> ty
%type <argument list> args args1
%type <argument> arg
%type <statement list> body body_rev
%type <statement> statement
%type <expr> expr
%type <expr list> exprs exprs1

%left Or
%left And
%nonassoc DoubleEq Lt
%left Plus Minus
%left Times Divide
%nonassoc Not

%%

start :
  | p = program; EOF { List.rev p }

program :
  | d = definition              { [d] }
  | p = program; d = definition { d :: p}

definition :
  | t = ty; n = Id; LParen; ars = args; RParen; LBrace; b = body; RBrace
    { { ret_type = t; name = n; args = ars; code = b; } }

ty :
  | TInt    { IntTy }
  | TBool   { BoolTy }
  | TString { StringTy }

args :
  |             { [] }
  | ars = args1 { List.rev ars }

args1 :
  | a = arg                     { [a] }
  | ars = args1; Comma; a = arg { a :: ars }

arg :
  | t = ty; n = Id { { name = n; ty = t; } }

body :
  | b = body_rev { List.rev b }

body_rev :
  | s = statement;               { [s] }
  | b = body_rev; s = statement; { s :: b }

statement :
  | Return; e = expr; Semi                         { Ret e }
  | While; LParen; c = expr; RParen; s = statement { WhileLoop (c, s) }
  | n = Id; Equal; e = expr; Semi                  { Assign (n, e) }
  | Skip; Semi                                     { Nop }
  | LBrace; b = body; RBrace                       { Block b }
  | If; LParen; c = expr; RParen; t = statement; Else; f = statement;
    { IfElse (c, t, f) }


expr :
  | l = expr; Plus;     r = expr       { Add (l, r) }
  | l = expr; Minus;    r = expr       { Sub (l, r) }
  | l = expr; Times;    r = expr       { Mul (l, r) }
  | l = expr; Divide;   r = expr       { Div (l, r) }
  | l = expr; And;      r = expr       { Conj (l, r) }
  | l = expr; Or;       r = expr       { Disj (l, r) }
  | Not; e = expr                      { Neg e }
  | l = expr; DoubleEq; r = expr       { Eq (l, r) }
  | l = expr; Lt;       r = expr       { Less (l, r) }
  | f = Id; LParen; es = exprs; RParen { Apply (f, es) }
  | n = Id;                            { Var n }
  | i = Int                            { CInt i }
  | s = String                         { CString s }
  | True                               { CBool true }
  | False                              { CBool false }
  | LParen; e = expr; RParen           { e }

exprs :
  |             { [] }
  | es = exprs1 { List.rev es }

exprs1 :
  | e = expr                     { [e] }
  | es = exprs1; Comma; e = expr { e :: es }

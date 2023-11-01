%{
    open Ast
%}

%token Lambda
%token Dot
%token LParen
%token RParen
%token Equal
%token <string> Var
%token  Int_ty
%token  Bool_ty
%token  Unit_ty
%token EOF
%token Arrow
%token Colon

%start <lc_expr> start

%type <lc_expr> program
%type <lc_expr> term
%type <lc_expr> application
%type <lc_expr> base
%type <typ> type1

%%

start:
  | p = program; EOF; { p }

program:
  | t = term;                 { t }

term:
  | Lambda; id = Var; Colon; tp = type1; Dot; t = term; { ELambda (id,tp,t) }
  | a = application;                 { a }

application:
  | a = application; b = base; { EApp (a, b) }
  | b = base;                  { b }

base:
  | id = Var;                 { EVar id }
  | LParen; t = term; RParen; { t }

type1: 
  | tp1 = type1 ; Arrow ; tp2 = type1 { FuncTy (tp1, tp2) }
  | Int_ty                    { IntTy }
  | Bool_ty                   { BoolTy }
  | Unit_ty                   { UnitTy }


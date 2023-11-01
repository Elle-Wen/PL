%{

open Ast

%}

%token Lambda 
%token Dot 
%token LParen
%token RParen
%token Equal 
%token Semicolon 
%token EOF
%token <string> Var 

%start <lc_expr> start 

%type <lc_expr> program 
%type <string*lc_expr> binding
%type <lc_expr> term 
%type <lc_expr> application 
%type <lc_expr> base 

%% 

start: 
  |p = program ; EOF {p} 

program: 
  | t = term {t} 
  | b = binding ; p = program {EApp(ELambda(fst b,p),snd b)}

binding:
  | n = Var ; Equal ; t = term ; Semicolon {(n,t)}

term: 
  | Lambda ; n = Var ; Dot ; t = term {ELambda (n, t)}
  | a = application {a}

application: 
  | b = base {b}
  | a = application ; b = base {EApp (a, b)}

base:
  | n = Var {EVar n}
  | LParen ; t = term ; RParen {t}


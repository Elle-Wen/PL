%{
    open Ast
%}

  %token Type             (** type - keyword *)
  %token Of               (** of - keyword *)
  %token Let              (** let - keyword *)
  %token Rec              (** rec - keyword *)
  %token In               (** in - keyword *)
  %token If               (** if - keyword *)
  %token Then             (** then - keyword *)
  %token Else             (** else - keyword *)
  %token Match            (** match - keyword *)
  %token With             (** with - keyword *)
  %token Fun              (** fun - keyword *)
  %token True             (** true - keyword *)
  %token False            (** false - keyword *)
  %token Mod              (** mod - keyword *)
  %token TInt             (** int - type name *)
  %token TBool            (** bool - type name *)
  %token TString          (** string - type name *)
  %token TUnit            (** unit - type name *)
  %token Eq               (** = - binary operator *)
  %token Plus             (** + - binary operator *)
  %token Minus            (** - - binary operator *)
  %token Times            (** * - binary operator *)
  %token Divide           (** / - binary operator *)
  %token Lt               (** < - binary operator *)
  %token Concat           (** ^ - binary operator *)
  %token And              (** && - binary operator *)
  %token Or               (** || - binary operator *)
  %token Not              (** ! - unary operator *)
  %token Negate           (** ~ - unary operator *)
  %token DoubleSemicolon  (** ;; *)
  %token Colon            (** : *)
  %token Arrow            (** -> *)
  %token DoubleArrow      (** => *)
  %token LParen           (** ( *)
  %token RParen           (** ) *)
  %token Pipe             (* | *)
  %token Comma            (** , *)
  %token <string> Id      (** Identifier, like a variable or function name *)
  %token <int> Int        (** Integer literal *)
  %token <string> String    (** String literal *)
  %token EOF              (** End-of-file - you can ignore this *)

%nonassoc DoubleArrow, In, Else
%left Or 
%left And
%nonassoc Eq Lt
%left Plus Minus Concat
%right Arrow 
%left Times Divide Mod
%right Negate
%right Not

%start <program>start

%type <program>program 
%type <binding>binding (*the retuned value of binding needs to have type binding in my AST*)
%type <param>param
%type <expr>expr
%type <binop>binop
%type <unop>unop
%type <typee>typee 
%type <match_branch>match_branch 
%type <pattern_vars>pattern_vars 
%type <param list>param_any_number
%type <typee option>type_option 
%type <typee option>of_type_option 
%type <(string * typee option ) list>type_rule_geq_one
%type <param list>param_geq_one 
%type <expr list>expr_geq_one
%type <match_branch list>match_branch_geq_one
%type <string list>id_geq_one
%type <expr>app_expr
%type <expr>base_expr
%type <typee list>tuple_type
%type <typee>base_type

%% 
start: 
    | p = program ; EOF ; {p}
program:
    | p = binding ; DoubleSemicolon ; { [p] }
    | p = program ; b = binding ; DoubleSemicolon ; { p @ [b] }
binding: 
    | Let ; var = Id ; pl = param_any_number ; t = type_option ; Eq ; ex = expr; {LetDef(var, pl, t, ex)}
    | Let ; Rec ; var = Id ; pl = param_any_number ; t = type_option ; Eq ; ex = expr; {LetRecDef(var, pl, t, ex)}
    | Type ; var = Id ; Eq ; tr = type_rule_geq_one; {TyDef(var, tr)}

type_rule_geq_one: 
    | Pipe ; var = Id ; oft = of_type_option; {[(var,oft)]}
    | t = type_rule_geq_one ; Pipe ; var = Id ; oft = of_type_option; {t @ [(var,oft)]}
param_any_number: 
    | {[]} 
    | p = param ; h = param_any_number; {p::h}

type_option: 
    | Colon ; t = typee; {Some t}
    | {None}

of_type_option: 
    | Of ; t = typee; {Some t}
    | {None}

param: 
    | var = Id ; {UTyParam(var)}
    | LParen ; var = Id ; Colon ; t = typee ; RParen ; {TyParam(var,t)}

expr: 
    | Let ; var = Id ; p = param_any_number ; t = type_option ; Eq ; e1 = expr ; In ; e2 = expr ; {LetExpr(var, p, t, e1, e2)}
    | Let ; Rec ; var = Id ; p = param_any_number ; t = type_option ; Eq ; e1 = expr ; In ; e2 = expr ; {LetRecExpr(var, p, t, e1, e2)}
    | If ; e1 = expr ; Then ; e2 = expr ; Else ; e3 = expr ; {IfExpr(e1,e2,e3)}
    | Fun ; p = param_geq_one ; t = type_option ; DoubleArrow ; e = expr ; {FunExpr(p,t, e)}
    | ae = app_expr; {ae}
    | e1 = expr ; b = binop ; e2 = expr ; {ComputeExpr(e1,b,e2)}
    | u = unop ; e = expr ; {NotExpr(u,e)}
    | Match ; e1 = expr ; With ; mL = match_branch_geq_one ; {MatchExpr(e1,mL)} 
app_expr: 
    | e1 = app_expr ; e2 = base_expr ; {ExprExpr (e1,e2)}
    | e1 = base_expr ; {e1}

base_expr:
    | LParen ; e = expr ; RParen ; {e}
    | i = Int ; {IntExpr i}
    | True ; {TrueExpr}
    | False ; {FalseExpr}
    | s = String ; {StrExpr s}
    | var = Id ; {VarExpr var}
    | LParen ; RParen ; {BracketExpr}
    | LParen ; e1 = expr ; eL = expr_geq_one ; RParen ; {CommaExpr(e1 :: eL)}


match_branch_geq_one: 
    | Pipe ; m = match_branch ; {[m]}
    | Pipe ; m = match_branch ; ml = match_branch_geq_one ; {m::ml}

expr_geq_one:
    | Comma ; e = expr ; {[e]}
    | Comma ; e = expr ; el = expr_geq_one ; {e::el}

param_geq_one: 
    | p = param ; {[p]}
    | p = param ; b = param_geq_one ; {p::b}

%inline 
binop: 
    | Plus ; {PlusOp}
    | Minus ; {MinusOp}
    | Times ; {TimesOp}
    | Divide ; {DivideOp}
    | Lt ; {LessOp}
    | Mod ; {ModOp}
    | Eq ; {EqOp}
    | Concat ; {ExpOp}
    | And ; {AndOp}
    | Or ; {OrOp}
%inline 
unop: 
    | Not ; {NotOp}
    | Negate ; {NOp}    

typee: 
    | t1 = typee ; Arrow ; t2 = typee ; {ToType(t1,t2)}
    | t = tuple_type ; {TimesType t}
    | b = base_type ; {b}

tuple_type:
    | t = tuple_type ; Times ; b = base_type ; {t@[b]}
    | b = base_type ; Times ; d = base_type {[b;d]}

base_type: 
    | LParen ; t = typee ; RParen ; {t} 
    | TInt ; {IntType}
    | TBool ; {BoolType}
    | TString ; {StringType}
    | TUnit ; {UnitType}
    | var = Id ; {VarType var}

match_branch: 
    | var = Id ; p = pattern_vars ; DoubleArrow ; e = expr ; {MatchBranch(var,Some p,e)}
    | var = Id ; DoubleArrow ; e = expr ; {MatchBranch(var,None,e)} 

pattern_vars: 
    | var = Id ; {PatternVars(var::[])} 
    | LParen ; var = Id ; idl = id_geq_one ; RParen ; {PatternVars (var::idl)}

id_geq_one: 
    | Comma ; var = Id ; {[var]}
    | Comma ; var = Id ; vl = id_geq_one ; {var::vl}
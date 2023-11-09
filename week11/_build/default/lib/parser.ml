
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | With
    | Type
    | True
    | Times
    | Then
    | TUnit
    | TString
    | TInt
    | TBool
    | String of (
# 44 "lib/parser.mly"
         (string)
# 24 "lib/parser.ml"
  )
    | Rec
    | RParen
    | Plus
    | Pipe
    | Or
    | Of
    | Not
    | Negate
    | Mod
    | Minus
    | Match
    | Lt
    | Let
    | LParen
    | Int of (
# 43 "lib/parser.mly"
         (int)
# 43 "lib/parser.ml"
  )
    | In
    | If
    | Id of (
# 42 "lib/parser.mly"
         (string)
# 50 "lib/parser.ml"
  )
    | Fun
    | False
    | Eq
    | Else
    | EOF
    | DoubleSemicolon
    | DoubleArrow
    | Divide
    | Concat
    | Comma
    | Colon
    | Arrow
    | And
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  
    open Ast

# 74 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState000 : ('s, _menhir_box_start) _menhir_state
    (** State 000.
        Stack shape : .
        Start symbol: start. *)

  | MenhirState005 : (('s, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 005.
        Stack shape : Type Id Id.
        Start symbol: start. *)

  | MenhirState006 : (('s _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Of, _menhir_box_start) _menhir_state
    (** State 006.
        Stack shape : Id Of.
        Start symbol: start. *)

  | MenhirState011 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 011.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState014 : (('s, _menhir_box_start) _menhir_cell1_typee, _menhir_box_start) _menhir_state
    (** State 014.
        Stack shape : typee.
        Start symbol: start. *)

  | MenhirState017 : (('s, _menhir_box_start) _menhir_cell1_typee, _menhir_box_start) _menhir_state
    (** State 017.
        Stack shape : typee.
        Start symbol: start. *)

  | MenhirState023 : (('s, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_type_rule_geq_one _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 023.
        Stack shape : Type Id type_rule_geq_one Id.
        Start symbol: start. *)

  | MenhirState027 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 027.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState030 : (('s, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 030.
        Stack shape : LParen Id.
        Start symbol: start. *)

  | MenhirState034 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 034.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState035 : (('s, _menhir_box_start) _menhir_cell1_Colon, _menhir_box_start) _menhir_state
    (** State 035.
        Stack shape : Colon.
        Start symbol: start. *)

  | MenhirState038 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 038.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState041 : (('s, _menhir_box_start) _menhir_cell1_Not, _menhir_box_start) _menhir_state
    (** State 041.
        Stack shape : Not.
        Start symbol: start. *)

  | MenhirState042 : (('s, _menhir_box_start) _menhir_cell1_Negate, _menhir_box_start) _menhir_state
    (** State 042.
        Stack shape : Negate.
        Start symbol: start. *)

  | MenhirState043 : (('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_state
    (** State 043.
        Stack shape : Match.
        Start symbol: start. *)

  | MenhirState046 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 046.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState047 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 047.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState049 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 049.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState050 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 050.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState053 : (('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_state
    (** State 053.
        Stack shape : If.
        Start symbol: start. *)

  | MenhirState055 : (('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_state
    (** State 055.
        Stack shape : Fun.
        Start symbol: start. *)

  | MenhirState056 : ((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_state
    (** State 056.
        Stack shape : Fun param_geq_one.
        Start symbol: start. *)

  | MenhirState058 : (((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 058.
        Stack shape : Fun param_geq_one type_option.
        Start symbol: start. *)

  | MenhirState060 : ((((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 060.
        Stack shape : Fun param_geq_one type_option expr.
        Start symbol: start. *)

  | MenhirState061 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times, _menhir_box_start) _menhir_state
    (** State 061.
        Stack shape : expr Times.
        Start symbol: start. *)

  | MenhirState064 : (('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_state
    (** State 064.
        Stack shape : app_expr.
        Start symbol: start. *)

  | MenhirState065 : ((('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 065.
        Stack shape : app_expr LParen.
        Start symbol: start. *)

  | MenhirState066 : (((('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 066.
        Stack shape : app_expr LParen expr.
        Start symbol: start. *)

  | MenhirState068 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_state
    (** State 068.
        Stack shape : expr Plus.
        Start symbol: start. *)

  | MenhirState069 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 069.
        Stack shape : expr Plus expr.
        Start symbol: start. *)

  | MenhirState070 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod, _menhir_box_start) _menhir_state
    (** State 070.
        Stack shape : expr Mod.
        Start symbol: start. *)

  | MenhirState072 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide, _menhir_box_start) _menhir_state
    (** State 072.
        Stack shape : expr Divide.
        Start symbol: start. *)

  | MenhirState074 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_state
    (** State 074.
        Stack shape : expr Or.
        Start symbol: start. *)

  | MenhirState075 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 075.
        Stack shape : expr Or expr.
        Start symbol: start. *)

  | MenhirState076 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_state
    (** State 076.
        Stack shape : expr Minus.
        Start symbol: start. *)

  | MenhirState077 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 077.
        Stack shape : expr Minus expr.
        Start symbol: start. *)

  | MenhirState078 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_state
    (** State 078.
        Stack shape : expr Lt.
        Start symbol: start. *)

  | MenhirState079 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 079.
        Stack shape : expr Lt expr.
        Start symbol: start. *)

  | MenhirState080 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_state
    (** State 080.
        Stack shape : expr Concat.
        Start symbol: start. *)

  | MenhirState081 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 081.
        Stack shape : expr Concat expr.
        Start symbol: start. *)

  | MenhirState082 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_state
    (** State 082.
        Stack shape : expr Eq.
        Start symbol: start. *)

  | MenhirState083 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 083.
        Stack shape : expr Eq expr.
        Start symbol: start. *)

  | MenhirState084 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_state
    (** State 084.
        Stack shape : expr And.
        Start symbol: start. *)

  | MenhirState085 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 085.
        Stack shape : expr And expr.
        Start symbol: start. *)

  | MenhirState087 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 087.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState089 : ((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 089.
        Stack shape : If expr.
        Start symbol: start. *)

  | MenhirState090 : (((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_state
    (** State 090.
        Stack shape : If expr Then.
        Start symbol: start. *)

  | MenhirState091 : ((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 091.
        Stack shape : If expr Then expr.
        Start symbol: start. *)

  | MenhirState092 : (((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_state
    (** State 092.
        Stack shape : If expr Then expr Else.
        Start symbol: start. *)

  | MenhirState093 : ((((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 093.
        Stack shape : If expr Then expr Else expr.
        Start symbol: start. *)

  | MenhirState094 : ((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 094.
        Stack shape : LParen expr.
        Start symbol: start. *)

  | MenhirState095 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_state
    (** State 095.
        Stack shape : expr Comma.
        Start symbol: start. *)

  | MenhirState096 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 096.
        Stack shape : expr Comma expr.
        Start symbol: start. *)

  | MenhirState100 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 100.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState101 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 101.
        Stack shape : Let Id param_any_number type_option expr In.
        Start symbol: start. *)

  | MenhirState102 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 102.
        Stack shape : Let Id param_any_number type_option expr In expr.
        Start symbol: start. *)

  | MenhirState103 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 103.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState105 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 105.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState106 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 106.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState108 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 108.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState109 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 109.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState110 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 110.
        Stack shape : Let Id param_any_number type_option expr In.
        Start symbol: start. *)

  | MenhirState111 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 111.
        Stack shape : Let Id param_any_number type_option expr In expr.
        Start symbol: start. *)

  | MenhirState112 : ((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 112.
        Stack shape : Match expr.
        Start symbol: start. *)

  | MenhirState113 : (((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With, _menhir_box_start) _menhir_state
    (** State 113.
        Stack shape : Match expr With.
        Start symbol: start. *)

  | MenhirState117 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 117.
        Stack shape : Pipe Id Id.
        Start symbol: start. *)

  | MenhirState119 : (('s _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Comma _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 119.
        Stack shape : Id Comma Id.
        Start symbol: start. *)

  | MenhirState124 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 124.
        Stack shape : Pipe Id.
        Start symbol: start. *)

  | MenhirState125 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 125.
        Stack shape : Pipe Id expr.
        Start symbol: start. *)

  | MenhirState127 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars, _menhir_box_start) _menhir_state
    (** State 127.
        Stack shape : Pipe Id pattern_vars.
        Start symbol: start. *)

  | MenhirState128 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 128.
        Stack shape : Pipe Id pattern_vars expr.
        Start symbol: start. *)

  | MenhirState129 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch, _menhir_box_start) _menhir_state
    (** State 129.
        Stack shape : Pipe match_branch.
        Start symbol: start. *)

  | MenhirState134 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 134.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState135 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 135.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState136 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 136.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState138 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 138.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState139 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 139.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState141 : (('s, _menhir_box_start) _menhir_cell1_program, _menhir_box_start) _menhir_state
    (** State 141.
        Stack shape : program.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_app_expr = 
  | MenhirCell1_app_expr of 's * ('s, 'r) _menhir_state * (Ast.expr list)

and ('s, 'r) _menhir_cell1_expr = 
  | MenhirCell1_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and 's _menhir_cell0_match_branch = 
  | MenhirCell0_match_branch of 's * (Ast.match_branch)

and ('s, 'r) _menhir_cell1_param = 
  | MenhirCell1_param of 's * ('s, 'r) _menhir_state * (Ast.param)

and ('s, 'r) _menhir_cell1_param_any_number = 
  | MenhirCell1_param_any_number of 's * ('s, 'r) _menhir_state * (Ast.param list)

and ('s, 'r) _menhir_cell1_param_geq_one = 
  | MenhirCell1_param_geq_one of 's * ('s, 'r) _menhir_state * (Ast.param list)

and 's _menhir_cell0_pattern_vars = 
  | MenhirCell0_pattern_vars of 's * (Ast.pattern_vars)

and ('s, 'r) _menhir_cell1_program = 
  | MenhirCell1_program of 's * ('s, 'r) _menhir_state * (Ast.program)

and ('s, 'r) _menhir_cell1_type_option = 
  | MenhirCell1_type_option of 's * ('s, 'r) _menhir_state * (Ast.typee option)

and 's _menhir_cell0_type_rule_geq_one = 
  | MenhirCell0_type_rule_geq_one of 's * ((string * Ast.typee option) list)

and ('s, 'r) _menhir_cell1_typee = 
  | MenhirCell1_typee of 's * ('s, 'r) _menhir_state * (Ast.typee)

and ('s, 'r) _menhir_cell1_And = 
  | MenhirCell1_And of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Colon = 
  | MenhirCell1_Colon of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Comma = 
  | MenhirCell1_Comma of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Concat = 
  | MenhirCell1_Concat of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Divide = 
  | MenhirCell1_Divide of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Else = 
  | MenhirCell1_Else of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Eq = 
  | MenhirCell1_Eq of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Fun = 
  | MenhirCell1_Fun of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_Id = 
  | MenhirCell0_Id of 's * (
# 42 "lib/parser.mly"
         (string)
# 529 "lib/parser.ml"
)

and ('s, 'r) _menhir_cell1_If = 
  | MenhirCell1_If of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_In = 
  | MenhirCell1_In of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_LParen = 
  | MenhirCell1_LParen of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Let = 
  | MenhirCell1_Let of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Lt = 
  | MenhirCell1_Lt of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Match = 
  | MenhirCell1_Match of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Minus = 
  | MenhirCell1_Minus of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Mod = 
  | MenhirCell1_Mod of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Negate = 
  | MenhirCell1_Negate of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Not = 
  | MenhirCell1_Not of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Of = 
  | MenhirCell1_Of of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Or = 
  | MenhirCell1_Or of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Pipe = 
  | MenhirCell1_Pipe of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Plus = 
  | MenhirCell1_Plus of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Then = 
  | MenhirCell1_Then of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Times = 
  | MenhirCell1_Times of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Type = 
  | MenhirCell1_Type of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_With = 
  | MenhirCell1_With of 's * ('s, 'r) _menhir_state

and _menhir_box_start = 
  | MenhirBox_start of (Ast.program) [@@unboxed]

let _menhir_action_01 =
  fun e1 e2 ->
    (
# 120 "lib/parser.mly"
                                       (e1 @ [e2])
# 594 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_02 =
  fun e1 ->
    (
# 121 "lib/parser.mly"
                       ([e1])
# 602 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_03 =
  fun e ->
    (
# 123 "lib/parser.mly"
                                   (e)
# 610 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun i ->
    (
# 124 "lib/parser.mly"
                (IntExpr i)
# 618 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun () ->
    (
# 125 "lib/parser.mly"
             (TrueExpr)
# 626 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun () ->
    (
# 126 "lib/parser.mly"
              (FalseExpr)
# 634 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun s ->
    (
# 127 "lib/parser.mly"
                   (StrExpr s)
# 642 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun var ->
    (
# 128 "lib/parser.mly"
                 (VarExpr var)
# 650 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun () ->
    (
# 129 "lib/parser.mly"
                        (BracketExpr)
# 658 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun ex pl t var ->
    (
# 86 "lib/parser.mly"
                                                                                 (ValDef(var, pl, t, ex))
# 666 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_11 =
  fun ex pl t var ->
    (
# 87 "lib/parser.mly"
                                                                                       (RecDef(var, pl, t, ex))
# 674 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_12 =
  fun tr var ->
    (
# 88 "lib/parser.mly"
                                                     (TyDef(var, tr))
# 682 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_13 =
  fun e1 e2 p t var ->
    (
# 110 "lib/parser.mly"
                                                                                                  (LetExpr(var, p, t, e1, e2))
# 690 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_14 =
  fun e1 e2 p t var ->
    (
# 111 "lib/parser.mly"
                                                                                                        (LetRecExpr(var, p, t, e1, e2))
# 698 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_15 =
  fun e1 e2 e3 ->
    (
# 112 "lib/parser.mly"
                                                             (IfExpr(e1,e2,e3))
# 706 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_16 =
  fun e p t ->
    (
# 113 "lib/parser.mly"
                                                                           (FunExpr(p,t, e))
# 714 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_17 =
  fun ae ->
    (
# 114 "lib/parser.mly"
                     (ExprExpr(ae))
# 722 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_18 =
  fun e1 eL ->
    (
# 115 "lib/parser.mly"
                                                        (CommaExpr(e1 :: eL))
# 730 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_19 =
  fun e1 e2 ->
    let b = 
# 144 "lib/parser.mly"
             (PlusOp)
# 738 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 743 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_20 =
  fun e1 e2 ->
    let b = 
# 145 "lib/parser.mly"
              (MinusOp)
# 751 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 756 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun e1 e2 ->
    let b = 
# 146 "lib/parser.mly"
              (TimesOp)
# 764 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 769 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun e1 e2 ->
    let b = 
# 147 "lib/parser.mly"
               (DivideOp)
# 777 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 782 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun e1 e2 ->
    let b = 
# 148 "lib/parser.mly"
           (LessOp)
# 790 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 795 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun e1 e2 ->
    let b = 
# 149 "lib/parser.mly"
            (ModOp)
# 803 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 808 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun e1 e2 ->
    let b = 
# 150 "lib/parser.mly"
           (EqOp)
# 816 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 821 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun e1 e2 ->
    let b = 
# 151 "lib/parser.mly"
               (ExpOp)
# 829 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 834 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun e1 e2 ->
    let b = 
# 152 "lib/parser.mly"
            (AndOp)
# 842 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 847 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun e1 e2 ->
    let b = 
# 153 "lib/parser.mly"
           (OrOp)
# 855 "lib/parser.ml"
     in
    (
# 116 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 860 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e ->
    let u = 
# 156 "lib/parser.mly"
            (NotOp)
# 868 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                            (NotExpr(u,e))
# 873 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun e ->
    let u = 
# 157 "lib/parser.mly"
               (NOp)
# 881 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                            (NotExpr(u,e))
# 886 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun e1 mL ->
    (
# 118 "lib/parser.mly"
                                                             (MatchExpr(e1,mL))
# 894 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun e ->
    (
# 135 "lib/parser.mly"
                         ([e])
# 902 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_33 =
  fun e el ->
    (
# 136 "lib/parser.mly"
                                             (e::el)
# 910 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_34 =
  fun var ->
    (
# 178 "lib/parser.mly"
                         ([var])
# 918 "lib/parser.ml"
     : (string list))

let _menhir_action_35 =
  fun var vl ->
    (
# 179 "lib/parser.mly"
                                           (var::vl)
# 926 "lib/parser.ml"
     : (string list))

let _menhir_action_36 =
  fun e p var ->
    (
# 170 "lib/parser.mly"
                                                             (MatchBranch(var,Some p,e))
# 934 "lib/parser.ml"
     : (Ast.match_branch))

let _menhir_action_37 =
  fun e var ->
    (
# 171 "lib/parser.mly"
                                          (MatchBranch(var,None,e))
# 942 "lib/parser.ml"
     : (Ast.match_branch))

let _menhir_action_38 =
  fun m ->
    (
# 131 "lib/parser.mly"
                                ([m])
# 950 "lib/parser.ml"
     : (Ast.match_branch list))

let _menhir_action_39 =
  fun m ml ->
    (
# 132 "lib/parser.mly"
                                                            (m::ml)
# 958 "lib/parser.ml"
     : (Ast.match_branch list))

let _menhir_action_40 =
  fun t ->
    (
# 102 "lib/parser.mly"
                      (Some t)
# 966 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_41 =
  fun () ->
    (
# 103 "lib/parser.mly"
      (None)
# 974 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_42 =
  fun var ->
    (
# 106 "lib/parser.mly"
                 (UTyParam(var))
# 982 "lib/parser.ml"
     : (Ast.param))

let _menhir_action_43 =
  fun t var ->
    (
# 107 "lib/parser.mly"
                                                       (TyParam(var,t))
# 990 "lib/parser.ml"
     : (Ast.param))

let _menhir_action_44 =
  fun () ->
    (
# 94 "lib/parser.mly"
      ([])
# 998 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_45 =
  fun h p ->
    (
# 95 "lib/parser.mly"
                                        (p::h)
# 1006 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_46 =
  fun p ->
    (
# 139 "lib/parser.mly"
                  ([p])
# 1014 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_47 =
  fun b p ->
    (
# 140 "lib/parser.mly"
                                      (p::b)
# 1022 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_48 =
  fun var ->
    (
# 174 "lib/parser.mly"
                 (PatternVars(var::[]))
# 1030 "lib/parser.ml"
     : (Ast.pattern_vars))

let _menhir_action_49 =
  fun idl var ->
    (
# 175 "lib/parser.mly"
                                                      (PatternVars (var::idl))
# 1038 "lib/parser.ml"
     : (Ast.pattern_vars))

let _menhir_action_50 =
  fun p ->
    (
# 83 "lib/parser.mly"
                                      ( [p] )
# 1046 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_51 =
  fun b p ->
    (
# 84 "lib/parser.mly"
                                                    ( p @ [b] )
# 1054 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_52 =
  fun p ->
    (
# 81 "lib/parser.mly"
                          (p)
# 1062 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_53 =
  fun t ->
    (
# 98 "lib/parser.mly"
                         (Some t)
# 1070 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_54 =
  fun () ->
    (
# 99 "lib/parser.mly"
      (None)
# 1078 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_55 =
  fun oft var ->
    (
# 91 "lib/parser.mly"
                                              ([(var,oft)])
# 1086 "lib/parser.ml"
     : ((string * Ast.typee option) list))

let _menhir_action_56 =
  fun oft t var ->
    (
# 92 "lib/parser.mly"
                                                                      (t @ [(var,oft)])
# 1094 "lib/parser.ml"
     : ((string * Ast.typee option) list))

let _menhir_action_57 =
  fun t1 t2 ->
    (
# 160 "lib/parser.mly"
                                        (ToType([t1;t2]))
# 1102 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_58 =
  fun t ->
    (
# 161 "lib/parser.mly"
                                    (t)
# 1110 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_59 =
  fun t1 t2 ->
    (
# 162 "lib/parser.mly"
                                        (TimesType(t1,[t2]))
# 1118 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_60 =
  fun () ->
    (
# 163 "lib/parser.mly"
             (IntType)
# 1126 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_61 =
  fun () ->
    (
# 164 "lib/parser.mly"
              (BoolType)
# 1134 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_62 =
  fun () ->
    (
# 165 "lib/parser.mly"
                (StringType)
# 1142 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_63 =
  fun () ->
    (
# 166 "lib/parser.mly"
              (UnitType)
# 1150 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_64 =
  fun var ->
    (
# 167 "lib/parser.mly"
                 (VarType var)
# 1158 "lib/parser.ml"
     : (Ast.typee))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | And ->
        "And"
    | Arrow ->
        "Arrow"
    | Colon ->
        "Colon"
    | Comma ->
        "Comma"
    | Concat ->
        "Concat"
    | Divide ->
        "Divide"
    | DoubleArrow ->
        "DoubleArrow"
    | DoubleSemicolon ->
        "DoubleSemicolon"
    | EOF ->
        "EOF"
    | Else ->
        "Else"
    | Eq ->
        "Eq"
    | False ->
        "False"
    | Fun ->
        "Fun"
    | Id _ ->
        "Id"
    | If ->
        "If"
    | In ->
        "In"
    | Int _ ->
        "Int"
    | LParen ->
        "LParen"
    | Let ->
        "Let"
    | Lt ->
        "Lt"
    | Match ->
        "Match"
    | Minus ->
        "Minus"
    | Mod ->
        "Mod"
    | Negate ->
        "Negate"
    | Not ->
        "Not"
    | Of ->
        "Of"
    | Or ->
        "Or"
    | Pipe ->
        "Pipe"
    | Plus ->
        "Plus"
    | RParen ->
        "RParen"
    | Rec ->
        "Rec"
    | String _ ->
        "String"
    | TBool ->
        "TBool"
    | TInt ->
        "TInt"
    | TString ->
        "TString"
    | TUnit ->
        "TUnit"
    | Then ->
        "Then"
    | Times ->
        "Times"
    | True ->
        "True"
    | Type ->
        "Type"
    | With ->
        "With"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let rec _menhir_run_001 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Type (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Eq ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Pipe ->
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | Id _v_0 ->
                      let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v_0) in
                      let _tok = _menhir_lexer _menhir_lexbuf in
                      (match (_tok : MenhirBasics.token) with
                      | Of ->
                          _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState005
                      | DoubleSemicolon | Pipe ->
                          let _v_1 = _menhir_action_41 () in
                          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
                      | _ ->
                          _eRR ())
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_006 : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Of (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState006 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_007 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_63 () in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typee : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState035 ->
          _menhir_run_036 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState030 ->
          _menhir_run_031 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState017 ->
          _menhir_run_018 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState014 ->
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState011 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_036 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Colon as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | Eq ->
          let MenhirCell1_Colon (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_53 t in
          _menhir_goto_type_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_014 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_typee -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState014 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_62 () in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_60 () in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_61 () in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_011 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState011 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_012 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let var = _v in
      let _v = _menhir_action_64 var in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_017 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_typee -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState017 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_type_option : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState136 ->
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState106 ->
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState056 ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_137 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState138 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_039 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState064 ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState138 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState127 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState058 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState068 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_086 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_app_expr -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_app_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_01 e1 e2 in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_app_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | True ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | String _v_0 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState064
      | LParen ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, MenhirState064) in
          let _menhir_s = MenhirState065 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | RParen ->
              _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Int _v_4 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v_4 MenhirState064
      | Id _v_5 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v_5 MenhirState064
      | False ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | And | Comma | Concat | Divide | DoubleSemicolon | Else | Eq | In | Lt | Minus | Mod | Or | Pipe | Plus | RParen | Then | Times | With ->
          let ae = _v in
          let _v = _menhir_action_17 ae in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_040 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_07 s in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_051 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_09 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_041 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Not (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState041 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_042 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Negate (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState042 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Match (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState043 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Let (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Rec ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState046
              | Id _v_0 ->
                  _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState046
              | Colon | Eq ->
                  let _v_1 = _menhir_action_44 () in
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState046 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
          | Id _v_2 ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState105
          | Colon | Eq ->
              let _v_3 = _menhir_action_44 () in
              _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState105 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_028 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Colon ->
              let _menhir_s = MenhirState030 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | TUnit ->
                  _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TString ->
                  _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TInt ->
                  _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | TBool ->
                  _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LParen ->
                  _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Id _v ->
                  _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_033 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let var = _v in
      let _v = _menhir_action_42 var in
      _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_param : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState135 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_103 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState087 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState055 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_103 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState103
      | Id _v_0 ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState103
      | Colon | Eq ->
          let _v_1 = _menhir_action_44 () in
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let h = _v in
      let _v = _menhir_action_45 h p in
      _menhir_goto_param_any_number _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_param_any_number : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState135 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState046 ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState027 ->
          _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_136 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Eq ->
          let _v_0 = _menhir_action_54 () in
          _menhir_run_137 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState136 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_035 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Colon (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState035 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | TUnit ->
          _menhir_run_007 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TString ->
          _menhir_run_008 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TInt ->
          _menhir_run_009 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | TBool ->
          _menhir_run_010 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_011 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_012 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState106
      | Eq ->
          let _v_0 = _menhir_action_54 () in
          _menhir_run_107 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState106 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_107 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState108 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_050 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState050 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | RParen ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_052 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_053 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_If (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState053 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let var = _v in
      let _v = _menhir_action_08 var in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_055 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Fun (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState055 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_059 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_047 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState047
      | Eq ->
          let _v_0 = _menhir_action_54 () in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState047 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_048 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState049 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_034 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState034
      | Eq ->
          let _v_0 = _menhir_action_54 () in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState034 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_037 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState038 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LParen ->
          let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Id _v_0 ->
          let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
          _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState087
      | Colon | DoubleArrow ->
          let p = _v in
          let _v = _menhir_action_46 p in
          _menhir_goto_param_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_param_geq_one : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState087 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState055 ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_088 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_47 b p in
      _menhir_goto_param_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_056 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Fun as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_geq_one (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState056
      | DoubleArrow ->
          let _v_0 = _menhir_action_54 () in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState056 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_057 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState058 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState041 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState042 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState127 ->
          _menhir_run_128 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState124 ->
          _menhir_run_125 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState043 ->
          _menhir_run_112 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState101 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState049 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState095 ->
          _menhir_run_096 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState092 ->
          _menhir_run_093 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState090 ->
          _menhir_run_091 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_085 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_083 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_081 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_079 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_077 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState061 ->
          _menhir_run_062 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState058 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_139 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState139
      | DoubleSemicolon ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, pl) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let ex = _v in
          let _v = _menhir_action_10 ex pl t var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_061 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Times (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState061 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_068 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Plus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState068 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Or (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState074 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Mod (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Minus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lt (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState078 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Eq (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState082 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Divide (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Concat (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState080 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_And (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState084 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_binding : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState141 ->
          _menhir_run_143 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_145 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let p = _v in
      let _v = _menhir_action_50 p in
      _menhir_goto_program _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_program : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Type ->
          let _menhir_stack = MenhirCell1_program (_menhir_stack, _menhir_s, _v) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Let ->
          let _menhir_stack = MenhirCell1_program (_menhir_stack, _menhir_s, _v) in
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | EOF ->
          let p = _v in
          let _v = _menhir_action_52 p in
          MenhirBox_start _v
      | _ ->
          _eRR ()
  
  and _menhir_run_025 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Let (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Rec ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | LParen ->
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
              | Id _v_0 ->
                  _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState027
              | Colon | Eq ->
                  let _v_1 = _menhir_action_44 () in
                  _menhir_run_034 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState027 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState135
          | Id _v_2 ->
              _menhir_run_033 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState135
          | Colon | Eq ->
              let _v_3 = _menhir_action_44 () in
              _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState135 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_143 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_program -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_program (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_51 b p in
      _menhir_goto_program _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_134 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState134
      | DoubleSemicolon ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, pl) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let ex = _v in
          let _v = _menhir_action_11 ex pl t var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_133 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Not -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Not (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_29 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_132 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Negate -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Negate (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_30 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_128 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState128
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell0_pattern_vars (_menhir_stack, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_36 e p var in
          _menhir_goto_match_branch _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_match_branch : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell0_match_branch (_menhir_stack, _v) in
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState129
      | And | Comma | Concat | Divide | DoubleSemicolon | Else | Eq | In | Lt | Minus | Mod | Or | Plus | RParen | Then | Times | With ->
          let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
          let m = _v in
          let _v = _menhir_action_38 m in
          _menhir_goto_match_branch_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_114 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Pipe (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Id _v ->
                  let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
                  let _menhir_s = MenhirState117 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | Comma ->
                      _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let var = _v_1 in
              let _v = _menhir_action_48 var in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | DoubleArrow ->
              let _menhir_s = MenhirState124 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | True ->
                  _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | String _v ->
                  _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | Not ->
                  _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Negate ->
                  _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Match ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Let ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LParen ->
                  _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Int _v ->
                  _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | If ->
                  _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Id _v ->
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | Fun ->
                  _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | False ->
                  _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_118 : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Comma ->
              let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              _menhir_run_118 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState119
          | RParen ->
              let var = _v in
              let _v = _menhir_action_34 var in
              _menhir_goto_id_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_id_geq_one : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState117 ->
          _menhir_run_121 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState119 ->
          _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_121 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let idl = _v in
      let _v = _menhir_action_49 idl var in
      _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_pattern_vars : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_pattern_vars (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState127 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_120 : type  ttv_stack. (ttv_stack _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Comma _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let vl = _v in
      let _v = _menhir_action_35 var vl in
      _menhir_goto_id_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_match_branch_geq_one : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState113 ->
          _menhir_run_131 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_131 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_With (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_Match (_menhir_stack, _menhir_s) = _menhir_stack in
      let mL = _v in
      let _v = _menhir_action_31 e1 mL in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_130 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_match_branch (_menhir_stack, m) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let ml = _v in
      let _v = _menhir_action_39 m ml in
      _menhir_goto_match_branch_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_125 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState125
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_37 e var in
          _menhir_goto_match_branch _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_112 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Match as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | With ->
          let _menhir_stack = MenhirCell1_With (_menhir_stack, MenhirState112) in
          let _menhir_s = MenhirState113 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Pipe ->
              _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState112
      | _ ->
          _eRR ()
  
  and _menhir_run_111 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_13 e1 e2 p t var in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_109 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | In ->
          let _menhir_stack = MenhirCell1_In (_menhir_stack, MenhirState109) in
          let _menhir_s = MenhirState110 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState109
      | _ ->
          _eRR ()
  
  and _menhir_run_102 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_14 e1 e2 p t var in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_100 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | In ->
          let _menhir_stack = MenhirCell1_In (_menhir_stack, MenhirState100) in
          let _menhir_s = MenhirState101 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState100
      | _ ->
          _eRR ()
  
  and _menhir_run_096 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState096
      | RParen ->
          let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_32 e in
          _menhir_goto_expr_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState095 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr_geq_one : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState094 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState096 ->
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_098 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let eL = _v in
      let _v = _menhir_action_18 e1 eL in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_097 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let el = _v in
      let _v = _menhir_action_33 e el in
      _menhir_goto_expr_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_094 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | RParen ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Comma ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | _ ->
          _eRR ()
  
  and _menhir_run_067 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let _v = _menhir_action_03 e in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_093 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState093
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_Else (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_Then (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_If (_menhir_stack, _menhir_s) = _menhir_stack in
          let e3 = _v in
          let _v = _menhir_action_15 e1 e2 e3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_091 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Else ->
          let _menhir_stack = MenhirCell1_Else (_menhir_stack, MenhirState091) in
          let _menhir_s = MenhirState092 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState091
      | _ ->
          _eRR ()
  
  and _menhir_run_089 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_If as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Then ->
          let _menhir_stack = MenhirCell1_Then (_menhir_stack, MenhirState089) in
          let _menhir_s = MenhirState090 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_042 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_050 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_053 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_055 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState089
      | _ ->
          _eRR ()
  
  and _menhir_run_085 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_And (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_27 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Eq (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_25 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_081 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Concat (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_26 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Lt (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_23 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Minus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_20 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_075 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState075
      | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Or (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_28 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Divide (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_22 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_071 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Mod (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_24 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_069 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState069
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Plus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_19 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_066 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | RParen ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Plus ->
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Or ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Mod ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Minus ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Lt ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Eq ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Divide ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | Concat ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | And ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState066
      | _ ->
          _eRR ()
  
  and _menhir_run_062 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Times (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_21 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_060 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_068 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_geq_one (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell1_Fun (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_16 e p t in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let e1 = _v in
      let _v = _menhir_action_02 e1 in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_031 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_43 t var in
          _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. ((ttv_stack _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Of as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleSemicolon | Pipe ->
          let MenhirCell1_Of (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_40 t in
          _menhir_goto_of_type_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_of_type_option : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState023 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState005 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_024 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_type_rule_geq_one _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let MenhirCell0_type_rule_geq_one (_menhir_stack, t) = _menhir_stack in
      let oft = _v in
      let _v = _menhir_action_56 oft t var in
      _menhir_goto_type_rule_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_type_rule_geq_one : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell0_type_rule_geq_one (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Id _v_0 ->
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v_0) in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Of ->
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState023
              | DoubleSemicolon | Pipe ->
                  let _v_1 = _menhir_action_41 () in
                  _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DoubleSemicolon ->
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Type (_menhir_stack, _menhir_s) = _menhir_stack in
          let tr = _v in
          let _v = _menhir_action_12 tr var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_020 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let oft = _v in
      let _v = _menhir_action_55 oft var in
      _menhir_goto_type_rule_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_018 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_typee as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let MenhirCell1_typee (_menhir_stack, _menhir_s, t1) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_57 t1 t2 in
          _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_typee -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_typee (_menhir_stack, _menhir_s, t1) = _menhir_stack in
      let t2 = _v in
      let _v = _menhir_action_59 t1 t2 in
      _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_013 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_014 _menhir_stack _menhir_lexbuf _menhir_lexer
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_58 t in
          _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_017 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState000 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_025 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

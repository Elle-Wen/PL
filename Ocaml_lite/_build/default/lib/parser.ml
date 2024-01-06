
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

  | MenhirState015 : (('s, _menhir_box_start) _menhir_cell1_typee, _menhir_box_start) _menhir_state
    (** State 015.
        Stack shape : typee.
        Start symbol: start. *)

  | MenhirState018 : (('s, _menhir_box_start) _menhir_cell1_tuple_type, _menhir_box_start) _menhir_state
    (** State 018.
        Stack shape : tuple_type.
        Start symbol: start. *)

  | MenhirState021 : (('s, _menhir_box_start) _menhir_cell1_base_type, _menhir_box_start) _menhir_state
    (** State 021.
        Stack shape : base_type.
        Start symbol: start. *)

  | MenhirState027 : (('s, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_type_rule_geq_one _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 027.
        Stack shape : Type Id type_rule_geq_one Id.
        Start symbol: start. *)

  | MenhirState031 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 031.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState034 : (('s, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 034.
        Stack shape : LParen Id.
        Start symbol: start. *)

  | MenhirState038 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 038.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState039 : (('s, _menhir_box_start) _menhir_cell1_Colon, _menhir_box_start) _menhir_state
    (** State 039.
        Stack shape : Colon.
        Start symbol: start. *)

  | MenhirState042 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 042.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState045 : (('s, _menhir_box_start) _menhir_cell1_Not, _menhir_box_start) _menhir_state
    (** State 045.
        Stack shape : Not.
        Start symbol: start. *)

  | MenhirState046 : (('s, _menhir_box_start) _menhir_cell1_Negate, _menhir_box_start) _menhir_state
    (** State 046.
        Stack shape : Negate.
        Start symbol: start. *)

  | MenhirState047 : (('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_state
    (** State 047.
        Stack shape : Match.
        Start symbol: start. *)

  | MenhirState050 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 050.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState051 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 051.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState053 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 053.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState054 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 054.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState057 : (('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_state
    (** State 057.
        Stack shape : If.
        Start symbol: start. *)

  | MenhirState059 : (('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_state
    (** State 059.
        Stack shape : Fun.
        Start symbol: start. *)

  | MenhirState060 : ((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_state
    (** State 060.
        Stack shape : Fun param_geq_one.
        Start symbol: start. *)

  | MenhirState062 : (((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 062.
        Stack shape : Fun param_geq_one type_option.
        Start symbol: start. *)

  | MenhirState064 : ((((('s, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 064.
        Stack shape : Fun param_geq_one type_option expr.
        Start symbol: start. *)

  | MenhirState065 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times, _menhir_box_start) _menhir_state
    (** State 065.
        Stack shape : expr Times.
        Start symbol: start. *)

  | MenhirState068 : (('s, _menhir_box_start) _menhir_cell1_app_expr, _menhir_box_start) _menhir_state
    (** State 068.
        Stack shape : app_expr.
        Start symbol: start. *)

  | MenhirState070 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_state
    (** State 070.
        Stack shape : expr Plus.
        Start symbol: start. *)

  | MenhirState071 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 071.
        Stack shape : expr Plus expr.
        Start symbol: start. *)

  | MenhirState072 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod, _menhir_box_start) _menhir_state
    (** State 072.
        Stack shape : expr Mod.
        Start symbol: start. *)

  | MenhirState074 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide, _menhir_box_start) _menhir_state
    (** State 074.
        Stack shape : expr Divide.
        Start symbol: start. *)

  | MenhirState076 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_state
    (** State 076.
        Stack shape : expr Or.
        Start symbol: start. *)

  | MenhirState077 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 077.
        Stack shape : expr Or expr.
        Start symbol: start. *)

  | MenhirState078 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_state
    (** State 078.
        Stack shape : expr Minus.
        Start symbol: start. *)

  | MenhirState079 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 079.
        Stack shape : expr Minus expr.
        Start symbol: start. *)

  | MenhirState080 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_state
    (** State 080.
        Stack shape : expr Lt.
        Start symbol: start. *)

  | MenhirState081 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 081.
        Stack shape : expr Lt expr.
        Start symbol: start. *)

  | MenhirState082 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_state
    (** State 082.
        Stack shape : expr Concat.
        Start symbol: start. *)

  | MenhirState083 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 083.
        Stack shape : expr Concat expr.
        Start symbol: start. *)

  | MenhirState084 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_state
    (** State 084.
        Stack shape : expr Eq.
        Start symbol: start. *)

  | MenhirState085 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 085.
        Stack shape : expr Eq expr.
        Start symbol: start. *)

  | MenhirState086 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_state
    (** State 086.
        Stack shape : expr And.
        Start symbol: start. *)

  | MenhirState087 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 087.
        Stack shape : expr And expr.
        Start symbol: start. *)

  | MenhirState088 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 088.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState090 : ((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 090.
        Stack shape : If expr.
        Start symbol: start. *)

  | MenhirState091 : (((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_state
    (** State 091.
        Stack shape : If expr Then.
        Start symbol: start. *)

  | MenhirState092 : ((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 092.
        Stack shape : If expr Then expr.
        Start symbol: start. *)

  | MenhirState093 : (((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_state
    (** State 093.
        Stack shape : If expr Then expr Else.
        Start symbol: start. *)

  | MenhirState094 : ((((((('s, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 094.
        Stack shape : If expr Then expr Else expr.
        Start symbol: start. *)

  | MenhirState095 : ((('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 095.
        Stack shape : LParen expr.
        Start symbol: start. *)

  | MenhirState097 : ((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_state
    (** State 097.
        Stack shape : expr Comma.
        Start symbol: start. *)

  | MenhirState098 : (((('s, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 098.
        Stack shape : expr Comma expr.
        Start symbol: start. *)

  | MenhirState102 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 102.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState103 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 103.
        Stack shape : Let Id param_any_number type_option expr In.
        Start symbol: start. *)

  | MenhirState104 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 104.
        Stack shape : Let Id param_any_number type_option expr In expr.
        Start symbol: start. *)

  | MenhirState105 : (('s, _menhir_box_start) _menhir_cell1_param, _menhir_box_start) _menhir_state
    (** State 105.
        Stack shape : param.
        Start symbol: start. *)

  | MenhirState107 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 107.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState108 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 108.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState110 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 110.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState111 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 111.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState112 : (((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_state
    (** State 112.
        Stack shape : Let Id param_any_number type_option expr In.
        Start symbol: start. *)

  | MenhirState113 : ((((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 113.
        Stack shape : Let Id param_any_number type_option expr In expr.
        Start symbol: start. *)

  | MenhirState114 : ((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 114.
        Stack shape : Match expr.
        Start symbol: start. *)

  | MenhirState115 : (((('s, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With, _menhir_box_start) _menhir_state
    (** State 115.
        Stack shape : Match expr With.
        Start symbol: start. *)

  | MenhirState119 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 119.
        Stack shape : Pipe Id Id.
        Start symbol: start. *)

  | MenhirState121 : (('s _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Comma _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 121.
        Stack shape : Id Comma Id.
        Start symbol: start. *)

  | MenhirState126 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 126.
        Stack shape : Pipe Id.
        Start symbol: start. *)

  | MenhirState127 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 127.
        Stack shape : Pipe Id expr.
        Start symbol: start. *)

  | MenhirState129 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars, _menhir_box_start) _menhir_state
    (** State 129.
        Stack shape : Pipe Id pattern_vars.
        Start symbol: start. *)

  | MenhirState130 : ((('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 130.
        Stack shape : Pipe Id pattern_vars expr.
        Start symbol: start. *)

  | MenhirState131 : (('s, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch, _menhir_box_start) _menhir_state
    (** State 131.
        Stack shape : Pipe match_branch.
        Start symbol: start. *)

  | MenhirState136 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 136.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState137 : (('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_state
    (** State 137.
        Stack shape : Let Id.
        Start symbol: start. *)

  | MenhirState138 : ((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_state
    (** State 138.
        Stack shape : Let Id param_any_number.
        Start symbol: start. *)

  | MenhirState140 : (((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_state
    (** State 140.
        Stack shape : Let Id param_any_number type_option.
        Start symbol: start. *)

  | MenhirState141 : ((((('s, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_state
    (** State 141.
        Stack shape : Let Id param_any_number type_option expr.
        Start symbol: start. *)

  | MenhirState143 : (('s, _menhir_box_start) _menhir_cell1_program, _menhir_box_start) _menhir_state
    (** State 143.
        Stack shape : program.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_app_expr = 
  | MenhirCell1_app_expr of 's * ('s, 'r) _menhir_state * (Ast.expr)

and ('s, 'r) _menhir_cell1_base_type = 
  | MenhirCell1_base_type of 's * ('s, 'r) _menhir_state * (Ast.typee)

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

and ('s, 'r) _menhir_cell1_tuple_type = 
  | MenhirCell1_tuple_type of 's * ('s, 'r) _menhir_state * (Ast.typee list)

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
# 530 "lib/parser.ml"
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
# 121 "lib/parser.mly"
                                       (ExprExpr (e1,e2))
# 595 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_02 =
  fun e1 ->
    (
# 122 "lib/parser.mly"
                       (e1)
# 603 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_03 =
  fun e ->
    (
# 125 "lib/parser.mly"
                                   (e)
# 611 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_04 =
  fun i ->
    (
# 126 "lib/parser.mly"
                (IntExpr i)
# 619 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_05 =
  fun () ->
    (
# 127 "lib/parser.mly"
             (TrueExpr)
# 627 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_06 =
  fun () ->
    (
# 128 "lib/parser.mly"
              (FalseExpr)
# 635 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_07 =
  fun s ->
    (
# 129 "lib/parser.mly"
                   (StrExpr s)
# 643 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_08 =
  fun var ->
    (
# 130 "lib/parser.mly"
                 (VarExpr var)
# 651 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_09 =
  fun () ->
    (
# 131 "lib/parser.mly"
                        (BracketExpr)
# 659 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_10 =
  fun e1 eL ->
    (
# 132 "lib/parser.mly"
                                                        (CommaExpr(e1 :: eL))
# 667 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_11 =
  fun t ->
    (
# 174 "lib/parser.mly"
                                    (t)
# 675 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_12 =
  fun () ->
    (
# 175 "lib/parser.mly"
             (IntType)
# 683 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_13 =
  fun () ->
    (
# 176 "lib/parser.mly"
              (BoolType)
# 691 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_14 =
  fun () ->
    (
# 177 "lib/parser.mly"
                (StringType)
# 699 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_15 =
  fun () ->
    (
# 178 "lib/parser.mly"
              (UnitType)
# 707 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_16 =
  fun var ->
    (
# 179 "lib/parser.mly"
                 (VarType var)
# 715 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_17 =
  fun ex pl t var ->
    (
# 88 "lib/parser.mly"
                                                                                 (LetDef(var, pl, t, ex))
# 723 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_18 =
  fun ex pl t var ->
    (
# 89 "lib/parser.mly"
                                                                                       (LetRecDef(var, pl, t, ex))
# 731 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_19 =
  fun tr var ->
    (
# 90 "lib/parser.mly"
                                                     (TyDef(var, tr))
# 739 "lib/parser.ml"
     : (Ast.binding))

let _menhir_action_20 =
  fun e1 e2 p t var ->
    (
# 112 "lib/parser.mly"
                                                                                                  (LetExpr(var, p, t, e1, e2))
# 747 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_21 =
  fun e1 e2 p t var ->
    (
# 113 "lib/parser.mly"
                                                                                                        (LetRecExpr(var, p, t, e1, e2))
# 755 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_22 =
  fun e1 e2 e3 ->
    (
# 114 "lib/parser.mly"
                                                             (IfExpr(e1,e2,e3))
# 763 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_23 =
  fun e p t ->
    (
# 115 "lib/parser.mly"
                                                                           (FunExpr(p,t, e))
# 771 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_24 =
  fun ae ->
    (
# 116 "lib/parser.mly"
                     (ae)
# 779 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_25 =
  fun e1 e2 ->
    let b = 
# 149 "lib/parser.mly"
             (PlusOp)
# 787 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 792 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_26 =
  fun e1 e2 ->
    let b = 
# 150 "lib/parser.mly"
              (MinusOp)
# 800 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 805 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_27 =
  fun e1 e2 ->
    let b = 
# 151 "lib/parser.mly"
              (TimesOp)
# 813 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 818 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_28 =
  fun e1 e2 ->
    let b = 
# 152 "lib/parser.mly"
               (DivideOp)
# 826 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 831 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_29 =
  fun e1 e2 ->
    let b = 
# 153 "lib/parser.mly"
           (LessOp)
# 839 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 844 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_30 =
  fun e1 e2 ->
    let b = 
# 154 "lib/parser.mly"
            (ModOp)
# 852 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 857 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_31 =
  fun e1 e2 ->
    let b = 
# 155 "lib/parser.mly"
           (EqOp)
# 865 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 870 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_32 =
  fun e1 e2 ->
    let b = 
# 156 "lib/parser.mly"
               (ExpOp)
# 878 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 883 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_33 =
  fun e1 e2 ->
    let b = 
# 157 "lib/parser.mly"
            (AndOp)
# 891 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 896 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_34 =
  fun e1 e2 ->
    let b = 
# 158 "lib/parser.mly"
           (OrOp)
# 904 "lib/parser.ml"
     in
    (
# 117 "lib/parser.mly"
                                          (ComputeExpr(e1,b,e2))
# 909 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_35 =
  fun e ->
    let u = 
# 161 "lib/parser.mly"
            (NotOp)
# 917 "lib/parser.ml"
     in
    (
# 118 "lib/parser.mly"
                            (NotExpr(u,e))
# 922 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_36 =
  fun e ->
    let u = 
# 162 "lib/parser.mly"
               (NOp)
# 930 "lib/parser.ml"
     in
    (
# 118 "lib/parser.mly"
                            (NotExpr(u,e))
# 935 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_37 =
  fun e1 mL ->
    (
# 119 "lib/parser.mly"
                                                             (MatchExpr(e1,mL))
# 943 "lib/parser.ml"
     : (Ast.expr))

let _menhir_action_38 =
  fun e ->
    (
# 140 "lib/parser.mly"
                         ([e])
# 951 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_39 =
  fun e el ->
    (
# 141 "lib/parser.mly"
                                             (e::el)
# 959 "lib/parser.ml"
     : (Ast.expr list))

let _menhir_action_40 =
  fun var ->
    (
# 190 "lib/parser.mly"
                         ([var])
# 967 "lib/parser.ml"
     : (string list))

let _menhir_action_41 =
  fun var vl ->
    (
# 191 "lib/parser.mly"
                                           (var::vl)
# 975 "lib/parser.ml"
     : (string list))

let _menhir_action_42 =
  fun e p var ->
    (
# 182 "lib/parser.mly"
                                                             (MatchBranch(var,Some p,e))
# 983 "lib/parser.ml"
     : (Ast.match_branch))

let _menhir_action_43 =
  fun e var ->
    (
# 183 "lib/parser.mly"
                                          (MatchBranch(var,None,e))
# 991 "lib/parser.ml"
     : (Ast.match_branch))

let _menhir_action_44 =
  fun m ->
    (
# 136 "lib/parser.mly"
                                ([m])
# 999 "lib/parser.ml"
     : (Ast.match_branch list))

let _menhir_action_45 =
  fun m ml ->
    (
# 137 "lib/parser.mly"
                                                            (m::ml)
# 1007 "lib/parser.ml"
     : (Ast.match_branch list))

let _menhir_action_46 =
  fun t ->
    (
# 104 "lib/parser.mly"
                      (Some t)
# 1015 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_47 =
  fun () ->
    (
# 105 "lib/parser.mly"
      (None)
# 1023 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_48 =
  fun var ->
    (
# 108 "lib/parser.mly"
                 (UTyParam(var))
# 1031 "lib/parser.ml"
     : (Ast.param))

let _menhir_action_49 =
  fun t var ->
    (
# 109 "lib/parser.mly"
                                                       (TyParam(var,t))
# 1039 "lib/parser.ml"
     : (Ast.param))

let _menhir_action_50 =
  fun () ->
    (
# 96 "lib/parser.mly"
      ([])
# 1047 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_51 =
  fun h p ->
    (
# 97 "lib/parser.mly"
                                        (p::h)
# 1055 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_52 =
  fun p ->
    (
# 144 "lib/parser.mly"
                  ([p])
# 1063 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_53 =
  fun b p ->
    (
# 145 "lib/parser.mly"
                                      (p::b)
# 1071 "lib/parser.ml"
     : (Ast.param list))

let _menhir_action_54 =
  fun var ->
    (
# 186 "lib/parser.mly"
                 (PatternVars(var::[]))
# 1079 "lib/parser.ml"
     : (Ast.pattern_vars))

let _menhir_action_55 =
  fun idl var ->
    (
# 187 "lib/parser.mly"
                                                      (PatternVars (var::idl))
# 1087 "lib/parser.ml"
     : (Ast.pattern_vars))

let _menhir_action_56 =
  fun p ->
    (
# 85 "lib/parser.mly"
                                      ( [p] )
# 1095 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_57 =
  fun b p ->
    (
# 86 "lib/parser.mly"
                                                    ( p @ [b] )
# 1103 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_58 =
  fun p ->
    (
# 83 "lib/parser.mly"
                          (p)
# 1111 "lib/parser.ml"
     : (Ast.program))

let _menhir_action_59 =
  fun b t ->
    (
# 170 "lib/parser.mly"
                                               (t@[b])
# 1119 "lib/parser.ml"
     : (Ast.typee list))

let _menhir_action_60 =
  fun b d ->
    (
# 171 "lib/parser.mly"
                                            ([b;d])
# 1127 "lib/parser.ml"
     : (Ast.typee list))

let _menhir_action_61 =
  fun t ->
    (
# 100 "lib/parser.mly"
                         (Some t)
# 1135 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_62 =
  fun () ->
    (
# 101 "lib/parser.mly"
      (None)
# 1143 "lib/parser.ml"
     : (Ast.typee option))

let _menhir_action_63 =
  fun oft var ->
    (
# 93 "lib/parser.mly"
                                              ([(var,oft)])
# 1151 "lib/parser.ml"
     : ((string * Ast.typee option) list))

let _menhir_action_64 =
  fun oft t var ->
    (
# 94 "lib/parser.mly"
                                                                      (t @ [(var,oft)])
# 1159 "lib/parser.ml"
     : ((string * Ast.typee option) list))

let _menhir_action_65 =
  fun t1 t2 ->
    (
# 165 "lib/parser.mly"
                                        (ToType(t1,t2))
# 1167 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_66 =
  fun t ->
    (
# 166 "lib/parser.mly"
                       (TimesType t)
# 1175 "lib/parser.ml"
     : (Ast.typee))

let _menhir_action_67 =
  fun b ->
    (
# 167 "lib/parser.mly"
                      (b)
# 1183 "lib/parser.ml"
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
                          let _v_1 = _menhir_action_47 () in
                          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
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
      let _v = _menhir_action_15 () in
      _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_type : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState021 ->
          _menhir_run_022 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState039 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_020 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState018 ->
          _menhir_run_019 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_022 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_base_type -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_base_type (_menhir_stack, _menhir_s, b) = _menhir_stack in
      let d = _v in
      let _v = _menhir_action_60 b d in
      _menhir_goto_tuple_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_tuple_type : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_tuple_type (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState018 in
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
      | Arrow | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let t = _v in
          let _v = _menhir_action_66 t in
          _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_008 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_14 () in
      _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_009 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_010 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_13 () in
      _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
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
      let _v = _menhir_action_16 var in
      _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_typee : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState039 ->
          _menhir_run_040 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState034 ->
          _menhir_run_035 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState006 ->
          _menhir_run_023 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState015 ->
          _menhir_run_016 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState011 ->
          _menhir_run_013 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_040 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Colon as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | Eq ->
          let MenhirCell1_Colon (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_61 t in
          _menhir_goto_type_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_015 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_typee -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState015 in
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
      | MenhirState138 ->
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState108 ->
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState060 ->
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState051 ->
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState038 ->
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_139 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState140 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_043 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_05 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState068 ->
          _menhir_run_069 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState140 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState046 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState129 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState062 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState076 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState084 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState080 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState082 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState078 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState070 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState074 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState072 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_067 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_069 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_app_expr -> _ -> _ -> _ -> _ -> _menhir_box_start =
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
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | String _v_0 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState068
      | LParen ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | Int _v_1 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState068
      | Id _v_2 ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState068
      | False ->
          let _menhir_stack = MenhirCell1_app_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState068
      | And | Comma | Concat | Divide | DoubleSemicolon | Else | Eq | In | Lt | Minus | Mod | Or | Pipe | Plus | RParen | Then | Times | With ->
          let ae = _v in
          let _v = _menhir_action_24 ae in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_044 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let s = _v in
      let _v = _menhir_action_07 s in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_054 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | String _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let _v = _menhir_action_09 () in
          _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Not ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Negate ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Match ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Let ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | LParen ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Int _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | If ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | Id _v ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v MenhirState054
      | Fun ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | False ->
          let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState054
      | _ ->
          _eRR ()
  
  and _menhir_run_045 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Not (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState045 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_046 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Negate (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState046 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_047 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Match (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState047 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_048 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
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
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState050
              | Id _v_0 ->
                  _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState050
              | Colon | Eq ->
                  let _v_1 = _menhir_action_50 () in
                  _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState050 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState107
          | Id _v_2 ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState107
          | Colon | Eq ->
              let _v_3 = _menhir_action_50 () in
              _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState107 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_032 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Colon ->
              let _menhir_s = MenhirState034 in
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
  
  and _menhir_run_037 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let var = _v in
      let _v = _menhir_action_48 var in
      _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_param : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState050 ->
          _menhir_run_105 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState088 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState059 ->
          _menhir_run_088 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_105 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState105
      | Id _v_0 ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState105
      | Colon | Eq ->
          let _v_1 = _menhir_action_50 () in
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_106 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let h = _v in
      let _v = _menhir_action_51 h p in
      _menhir_goto_param_any_number _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_param_any_number : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState137 ->
          _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState107 ->
          _menhir_run_108 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState105 ->
          _menhir_run_106 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState050 ->
          _menhir_run_051 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState031 ->
          _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_138 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState138
      | Eq ->
          let _v_0 = _menhir_action_62 () in
          _menhir_run_139 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState138 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_039 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Colon (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState039 in
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
  
  and _menhir_run_108 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState108
      | Eq ->
          let _v_0 = _menhir_action_62 () in
          _menhir_run_109 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState108 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_109 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState110 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_056 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let i = _v in
      let _v = _menhir_action_04 i in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_057 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_If (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState057 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_058 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let var = _v in
      let _v = _menhir_action_08 var in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_059 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Fun (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState059 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | LParen ->
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_063 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_06 () in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_051 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState051
      | Eq ->
          let _v_0 = _menhir_action_62 () in
          _menhir_run_052 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState051 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_052 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState053 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_038 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_any_number (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState038
      | Eq ->
          let _v_0 = _menhir_action_62 () in
          _menhir_run_041 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState038 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_041 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Eq ->
          let _menhir_s = MenhirState042 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_088 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | LParen ->
          let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
          _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState088
      | Id _v_0 ->
          let _menhir_stack = MenhirCell1_param (_menhir_stack, _menhir_s, _v) in
          _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState088
      | Colon | DoubleArrow ->
          let p = _v in
          let _v = _menhir_action_52 p in
          _menhir_goto_param_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_param_geq_one : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState088 ->
          _menhir_run_089 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState059 ->
          _menhir_run_060 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_089 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_param -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_param (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_53 b p in
      _menhir_goto_param_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_060 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Fun as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_param_geq_one (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Colon ->
          _menhir_run_039 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState060
      | DoubleArrow ->
          let _v_0 = _menhir_action_62 () in
          _menhir_run_061 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState060 _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_061 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type_option (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState062 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState140 ->
          _menhir_run_141 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState042 ->
          _menhir_run_136 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState045 ->
          _menhir_run_135 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState046 ->
          _menhir_run_134 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState129 ->
          _menhir_run_130 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState126 ->
          _menhir_run_127 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState047 ->
          _menhir_run_114 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState112 ->
          _menhir_run_113 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState110 ->
          _menhir_run_111 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState103 ->
          _menhir_run_104 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState053 ->
          _menhir_run_102 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState097 ->
          _menhir_run_098 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState054 ->
          _menhir_run_095 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState093 ->
          _menhir_run_094 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState091 ->
          _menhir_run_092 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState057 ->
          _menhir_run_090 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState086 ->
          _menhir_run_087 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
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
          _menhir_run_075 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState072 ->
          _menhir_run_073 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState070 ->
          _menhir_run_071 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState065 ->
          _menhir_run_066 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState062 ->
          _menhir_run_064 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_141 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState141
      | DoubleSemicolon ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, pl) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let ex = _v in
          let _v = _menhir_action_17 ex pl t var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_065 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Times (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState065 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_070 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Plus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState070 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_076 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Or (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState076 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_072 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Mod (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState072 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_078 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Minus (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState078 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_080 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lt (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState080 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_084 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Eq (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState084 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_074 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Divide (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState074 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_082 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Concat (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState082 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_086 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_And (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState086 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_binding : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState000 ->
          _menhir_run_147 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | MenhirState143 ->
          _menhir_run_145 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_147 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let p = _v in
      let _v = _menhir_action_56 p in
      _menhir_goto_program _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_program : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Type ->
          let _menhir_stack = MenhirCell1_program (_menhir_stack, _menhir_s, _v) in
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | Let ->
          let _menhir_stack = MenhirCell1_program (_menhir_stack, _menhir_s, _v) in
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState143
      | EOF ->
          let p = _v in
          let _v = _menhir_action_58 p in
          MenhirBox_start _v
      | _ ->
          _eRR ()
  
  and _menhir_run_029 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
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
                  _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState031
              | Id _v_0 ->
                  _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState031
              | Colon | Eq ->
                  let _v_1 = _menhir_action_50 () in
                  _menhir_run_038 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 MenhirState031 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | Id _v ->
          let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | LParen ->
              _menhir_run_032 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState137
          | Id _v_2 ->
              _menhir_run_037 _menhir_stack _menhir_lexbuf _menhir_lexer _v_2 MenhirState137
          | Colon | Eq ->
              let _v_3 = _menhir_action_50 () in
              _menhir_run_138 _menhir_stack _menhir_lexbuf _menhir_lexer _v_3 MenhirState137 _tok
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_145 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_program -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_program (_menhir_stack, _menhir_s, p) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_57 b p in
      _menhir_goto_program _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_136 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState136
      | DoubleSemicolon ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, pl) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let ex = _v in
          let _v = _menhir_action_18 ex pl t var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_135 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Not -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Not (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_35 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_134 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Negate -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Negate (_menhir_stack, _menhir_s) = _menhir_stack in
      let e = _v in
      let _v = _menhir_action_36 e in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_130 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_pattern_vars as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState130
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell0_pattern_vars (_menhir_stack, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_42 e p var in
          _menhir_goto_match_branch _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_goto_match_branch : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Pipe ->
          let _menhir_stack = MenhirCell0_match_branch (_menhir_stack, _v) in
          _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState131
      | And | Comma | Concat | Divide | DoubleSemicolon | Else | Eq | In | Lt | Minus | Mod | Or | Plus | RParen | Then | Times | With ->
          let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
          let m = _v in
          let _v = _menhir_action_44 m in
          _menhir_goto_match_branch_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_116 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
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
                  let _menhir_s = MenhirState119 in
                  let _tok = _menhir_lexer _menhir_lexbuf in
                  (match (_tok : MenhirBasics.token) with
                  | Comma ->
                      _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
                  | _ ->
                      _eRR ())
              | _ ->
                  _eRR ())
          | Id _v_1 ->
              let _tok = _menhir_lexer _menhir_lexbuf in
              let var = _v_1 in
              let _v = _menhir_action_54 var in
              _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
          | DoubleArrow ->
              let _menhir_s = MenhirState126 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | True ->
                  _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | String _v ->
                  _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | Not ->
                  _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Negate ->
                  _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Match ->
                  _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Let ->
                  _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LParen ->
                  _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Int _v ->
                  _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | If ->
                  _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Id _v ->
                  _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | Fun ->
                  _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | False ->
                  _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_120 : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Id _v ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Comma ->
              let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
              let _menhir_stack = MenhirCell0_Id (_menhir_stack, _v) in
              _menhir_run_120 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState121
          | RParen ->
              let var = _v in
              let _v = _menhir_action_40 var in
              _menhir_goto_id_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_id_geq_one : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState119 ->
          _menhir_run_123 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState121 ->
          _menhir_run_122 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_123 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let idl = _v in
      let _v = _menhir_action_55 idl var in
      _menhir_goto_pattern_vars _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_goto_pattern_vars : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let _menhir_stack = MenhirCell0_pattern_vars (_menhir_stack, _v) in
      match (_tok : MenhirBasics.token) with
      | DoubleArrow ->
          let _menhir_s = MenhirState129 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_122 : type  ttv_stack. (ttv_stack _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Comma _menhir_cell0_Id -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let vl = _v in
      let _v = _menhir_action_41 var vl in
      _menhir_goto_id_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_goto_match_branch_geq_one : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState115 ->
          _menhir_run_133 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState131 ->
          _menhir_run_132 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_133 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_Match, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_With -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_With (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_Match (_menhir_stack, _menhir_s) = _menhir_stack in
      let mL = _v in
      let _v = _menhir_action_37 e1 mL in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_132 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_match_branch -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_match_branch (_menhir_stack, m) = _menhir_stack in
      let MenhirCell1_Pipe (_menhir_stack, _menhir_s) = _menhir_stack in
      let ml = _v in
      let _v = _menhir_action_45 m ml in
      _menhir_goto_match_branch_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_127 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Pipe _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState127
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_43 e var in
          _menhir_goto_match_branch _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_114 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Match as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | With ->
          let _menhir_stack = MenhirCell1_With (_menhir_stack, MenhirState114) in
          let _menhir_s = MenhirState115 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Pipe ->
              _menhir_run_116 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Times ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Plus ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Or ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Mod ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Minus ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Lt ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Eq ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Divide ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | Concat ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | And ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState114
      | _ ->
          _eRR ()
  
  and _menhir_run_113 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState113
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_20 e1 e2 p t var in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_111 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Plus ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Or ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Mod ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Minus ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Lt ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | In ->
          let _menhir_stack = MenhirCell1_In (_menhir_stack, MenhirState111) in
          let _menhir_s = MenhirState112 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Eq ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Divide ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | Concat ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | And ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState111
      | _ ->
          _eRR ()
  
  and _menhir_run_104 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_In as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState104
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_In (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_any_number (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Let (_menhir_stack, _menhir_s) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_21 e1 e2 p t var in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_102 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Let _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_param_any_number, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Plus ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Or ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Mod ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Minus ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Lt ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | In ->
          let _menhir_stack = MenhirCell1_In (_menhir_stack, MenhirState102) in
          let _menhir_s = MenhirState103 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Eq ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Divide ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | Concat ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | And ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState102
      | _ ->
          _eRR ()
  
  and _menhir_run_098 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState098
      | RParen ->
          let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_38 e in
          _menhir_goto_expr_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_097 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Comma (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState097 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | True ->
          _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | String _v ->
          _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Not ->
          _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Negate ->
          _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Match ->
          _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int _v ->
          _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | If ->
          _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Id _v ->
          _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Fun ->
          _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | False ->
          _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_goto_expr_geq_one : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      match _menhir_s with
      | MenhirState095 ->
          _menhir_run_100 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | MenhirState098 ->
          _menhir_run_099 _menhir_stack _menhir_lexbuf _menhir_lexer _v
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_100 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
      let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
      let eL = _v in
      let _v = _menhir_action_10 e1 eL in
      _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_099 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Comma, _menhir_box_start) _menhir_cell1_expr -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v ->
      let MenhirCell1_expr (_menhir_stack, _, e) = _menhir_stack in
      let MenhirCell1_Comma (_menhir_stack, _menhir_s) = _menhir_stack in
      let el = _v in
      let _v = _menhir_action_39 e el in
      _menhir_goto_expr_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
  
  and _menhir_run_095 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_03 e in
          _menhir_goto_base_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | Comma ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_097 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState095
      | _ ->
          _eRR ()
  
  and _menhir_run_094 : type  ttv_stack. ((((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Else as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState094
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_Else (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e2) = _menhir_stack in
          let MenhirCell1_Then (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _, e1) = _menhir_stack in
          let MenhirCell1_If (_menhir_stack, _menhir_s) = _menhir_stack in
          let e3 = _v in
          let _v = _menhir_action_22 e1 e2 e3 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_092 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_If, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Then as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Plus ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Or ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Mod ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Minus ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Lt ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Eq ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Else ->
          let _menhir_stack = MenhirCell1_Else (_menhir_stack, MenhirState092) in
          let _menhir_s = MenhirState093 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Divide ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | Concat ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | And ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState092
      | _ ->
          _eRR ()
  
  and _menhir_run_090 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_If as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Times ->
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Then ->
          let _menhir_stack = MenhirCell1_Then (_menhir_stack, MenhirState090) in
          let _menhir_s = MenhirState091 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | True ->
              _menhir_run_043 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | String _v ->
              _menhir_run_044 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Not ->
              _menhir_run_045 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Negate ->
              _menhir_run_046 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Match ->
              _menhir_run_047 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Let ->
              _menhir_run_048 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_054 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Int _v ->
              _menhir_run_056 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | If ->
              _menhir_run_057 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | Id _v ->
              _menhir_run_058 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Fun ->
              _menhir_run_059 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | False ->
              _menhir_run_063 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Plus ->
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Or ->
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Mod ->
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Minus ->
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Lt ->
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Eq ->
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Divide ->
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | Concat ->
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | And ->
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState090
      | _ ->
          _eRR ()
  
  and _menhir_run_087 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_And as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState087
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_And (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_33 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_085 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Eq as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState085
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Eq (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_31 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_083 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Concat as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState083
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Concat (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_32 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_081 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Lt as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState081
      | And | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Lt (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_29 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_079 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Minus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState079
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Minus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_26 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_077 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Or as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState077
      | Comma | DoubleSemicolon | Else | In | Or | Pipe | RParen | Then | With ->
          let MenhirCell1_Or (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_34 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_075 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Divide -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Divide (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_28 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_073 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Mod -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Mod (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_30 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_071 : type  ttv_stack. (((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Plus as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState071
      | And | Comma | Concat | DoubleSemicolon | Else | Eq | In | Lt | Minus | Or | Pipe | Plus | RParen | Then | With ->
          let MenhirCell1_Plus (_menhir_stack, _) = _menhir_stack in
          let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
          let e2 = _v in
          let _v = _menhir_action_25 e1 e2 in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_066 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_expr, _menhir_box_start) _menhir_cell1_Times -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_Times (_menhir_stack, _) = _menhir_stack in
      let MenhirCell1_expr (_menhir_stack, _menhir_s, e1) = _menhir_stack in
      let e2 = _v in
      let _v = _menhir_action_27 e1 e2 in
      _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_064 : type  ttv_stack. ((((ttv_stack, _menhir_box_start) _menhir_cell1_Fun, _menhir_box_start) _menhir_cell1_param_geq_one, _menhir_box_start) _menhir_cell1_type_option as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_065 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Plus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_070 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Or ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_076 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Mod ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_072 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Minus ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_078 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Lt ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_080 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Eq ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_084 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Divide ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_074 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Concat ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_082 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | And ->
          let _menhir_stack = MenhirCell1_expr (_menhir_stack, _menhir_s, _v) in
          _menhir_run_086 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState064
      | Comma | DoubleSemicolon | Else | In | Pipe | RParen | Then | With ->
          let MenhirCell1_type_option (_menhir_stack, _, t) = _menhir_stack in
          let MenhirCell1_param_geq_one (_menhir_stack, _, p) = _menhir_stack in
          let MenhirCell1_Fun (_menhir_stack, _menhir_s) = _menhir_stack in
          let e = _v in
          let _v = _menhir_action_23 e p t in
          _menhir_goto_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_067 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let e1 = _v in
      let _v = _menhir_action_02 e1 in
      _menhir_goto_app_expr _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_035 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_49 t var in
          _menhir_goto_param _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_023 : type  ttv_stack. ((ttv_stack _menhir_cell0_Id, _menhir_box_start) _menhir_cell1_Of as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleSemicolon | Pipe ->
          let MenhirCell1_Of (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_46 t in
          _menhir_goto_of_type_option _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_goto_of_type_option : type  ttv_stack. (ttv_stack _menhir_cell0_Id as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState027 ->
          _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState005 ->
          _menhir_run_024 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_028 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_type_rule_geq_one _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let MenhirCell0_type_rule_geq_one (_menhir_stack, t) = _menhir_stack in
      let oft = _v in
      let _v = _menhir_action_64 oft t var in
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
                  _menhir_run_006 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState027
              | DoubleSemicolon | Pipe ->
                  let _v_1 = _menhir_action_47 () in
                  _menhir_run_028 _menhir_stack _menhir_lexbuf _menhir_lexer _v_1 _tok
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | DoubleSemicolon ->
          let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
          let MenhirCell1_Type (_menhir_stack, _menhir_s) = _menhir_stack in
          let tr = _v in
          let _v = _menhir_action_19 tr var in
          _menhir_goto_binding _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_024 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Type _menhir_cell0_Id _menhir_cell0_Id -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Id (_menhir_stack, var) = _menhir_stack in
      let oft = _v in
      let _v = _menhir_action_63 oft var in
      _menhir_goto_type_rule_geq_one _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
  
  and _menhir_run_016 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_typee as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let MenhirCell1_typee (_menhir_stack, _menhir_s, t1) = _menhir_stack in
          let t2 = _v in
          let _v = _menhir_action_65 t1 t2 in
          _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_013 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_LParen as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_11 t in
          _menhir_goto_base_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | Arrow ->
          let _menhir_stack = MenhirCell1_typee (_menhir_stack, _menhir_s, _v) in
          _menhir_run_015 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_run_020 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Times ->
          let _menhir_stack = MenhirCell1_base_type (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState021 in
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
      | Arrow | DoubleArrow | DoubleSemicolon | Eq | Pipe | RParen ->
          let b = _v in
          let _v = _menhir_action_67 b in
          _menhir_goto_typee _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_019 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_tuple_type -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_tuple_type (_menhir_stack, _menhir_s, t) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_59 b t in
      _menhir_goto_tuple_type _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_000 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState000 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Type ->
          _menhir_run_001 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Let ->
          _menhir_run_029 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_000 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

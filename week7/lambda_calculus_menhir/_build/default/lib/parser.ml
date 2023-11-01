
module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | Var of (
# 11 "lib/parser.mly"
       (string)
# 15 "lib/parser.ml"
  )
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
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  
    open Ast

# 38 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_start) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: start. *)

  | MenhirState04 : (('s, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var, _menhir_box_start) _menhir_state
    (** State 04.
        Stack shape : Lambda Var.
        Start symbol: start. *)

  | MenhirState09 : ((('s, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var, _menhir_box_start) _menhir_cell1_type1, _menhir_box_start) _menhir_state
    (** State 09.
        Stack shape : Lambda Var type1.
        Start symbol: start. *)

  | MenhirState10 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 10.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState14 : (('s, _menhir_box_start) _menhir_cell1_application, _menhir_box_start) _menhir_state
    (** State 14.
        Stack shape : application.
        Start symbol: start. *)

  | MenhirState17 : (('s, _menhir_box_start) _menhir_cell1_type1, _menhir_box_start) _menhir_state
    (** State 17.
        Stack shape : type1.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_application = 
  | MenhirCell1_application of 's * ('s, 'r) _menhir_state * (Ast.lc_expr)

and ('s, 'r) _menhir_cell1_type1 = 
  | MenhirCell1_type1 of 's * ('s, 'r) _menhir_state * (Ast.typ)

and ('s, 'r) _menhir_cell1_LParen = 
  | MenhirCell1_LParen of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Lambda = 
  | MenhirCell1_Lambda of 's * ('s, 'r) _menhir_state

and 's _menhir_cell0_Var = 
  | MenhirCell0_Var of 's * (
# 11 "lib/parser.mly"
       (string)
# 88 "lib/parser.ml"
)

and _menhir_box_start = 
  | MenhirBox_start of (Ast.lc_expr) [@@unboxed]

let _menhir_action_01 =
  fun a b ->
    (
# 40 "lib/parser.mly"
                               ( EApp (a, b) )
# 99 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_02 =
  fun b ->
    (
# 41 "lib/parser.mly"
                               ( b )
# 107 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_03 =
  fun id ->
    (
# 44 "lib/parser.mly"
                              ( EVar id )
# 115 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_04 =
  fun t ->
    (
# 45 "lib/parser.mly"
                              ( t )
# 123 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_05 =
  fun t ->
    (
# 33 "lib/parser.mly"
                              ( t )
# 131 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_06 =
  fun p ->
    (
# 30 "lib/parser.mly"
                      ( p )
# 139 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_07 =
  fun id t tp ->
    (
# 36 "lib/parser.mly"
                                                        ( ELambda (id,tp,t) )
# 147 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_08 =
  fun a ->
    (
# 37 "lib/parser.mly"
                                     ( a )
# 155 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_09 =
  fun tp1 tp2 ->
    (
# 48 "lib/parser.mly"
                                      ( FuncTy (tp1, tp2) )
# 163 "lib/parser.ml"
     : (Ast.typ))

let _menhir_action_10 =
  fun () ->
    (
# 49 "lib/parser.mly"
                              ( IntTy )
# 171 "lib/parser.ml"
     : (Ast.typ))

let _menhir_action_11 =
  fun () ->
    (
# 50 "lib/parser.mly"
                              ( BoolTy )
# 179 "lib/parser.ml"
     : (Ast.typ))

let _menhir_action_12 =
  fun () ->
    (
# 51 "lib/parser.mly"
                              ( UnitTy )
# 187 "lib/parser.ml"
     : (Ast.typ))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | Arrow ->
        "Arrow"
    | Bool_ty ->
        "Bool_ty"
    | Colon ->
        "Colon"
    | Dot ->
        "Dot"
    | EOF ->
        "EOF"
    | Equal ->
        "Equal"
    | Int_ty ->
        "Int_ty"
    | LParen ->
        "LParen"
    | Lambda ->
        "Lambda"
    | RParen ->
        "RParen"
    | Semicolon ->
        "Semicolon"
    | Unit_ty ->
        "Unit_ty"
    | Var _ ->
        "Var"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_19 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _v _tok ->
      let t = _v in
      let _v = _menhir_action_05 t in
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let p = _v in
          let _v = _menhir_action_06 p in
          MenhirBox_start _v
      | _ ->
          _eRR ()
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let id = _v in
      let _v = _menhir_action_03 id in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState14 ->
          _menhir_run_15 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState00 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState09 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState10 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_15 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_application -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_application (_menhir_stack, _menhir_s, a) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_01 a b in
      _menhir_goto_application _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_application : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Var _v_0 ->
          let _menhir_stack = MenhirCell1_application (_menhir_stack, _menhir_s, _v) in
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState14
      | LParen ->
          let _menhir_stack = MenhirCell1_application (_menhir_stack, _menhir_s, _v) in
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState14
      | EOF | RParen ->
          let a = _v in
          let _v = _menhir_action_08 a in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState10 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Lambda ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_02 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lambda (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          let _menhir_stack = MenhirCell0_Var (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Colon ->
              let _menhir_s = MenhirState04 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Unit_ty ->
                  _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Int_ty ->
                  _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | Bool_ty ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_05 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_12 () in
      _menhir_goto_type1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_type1 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState17 ->
          _menhir_run_18 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState04 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_18 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_type1 as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Arrow ->
          let _menhir_stack = MenhirCell1_type1 (_menhir_stack, _menhir_s, _v) in
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer
      | Dot ->
          let MenhirCell1_type1 (_menhir_stack, _menhir_s, tp1) = _menhir_stack in
          let tp2 = _v in
          let _v = _menhir_action_09 tp1 tp2 in
          _menhir_goto_type1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_17 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_type1 -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState17 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Unit_ty ->
          _menhir_run_05 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Int_ty ->
          _menhir_run_06 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | Bool_ty ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_06 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_10 () in
      _menhir_goto_type1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let _v = _menhir_action_11 () in
      _menhir_goto_type1 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_08 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var as 'stack) -> _ -> _ -> _ -> ('stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let _menhir_stack = MenhirCell1_type1 (_menhir_stack, _menhir_s, _v) in
      match (_tok : MenhirBasics.token) with
      | Dot ->
          let _menhir_s = MenhirState09 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Var _v ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Lambda ->
              _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | Arrow ->
          _menhir_run_17 _menhir_stack _menhir_lexbuf _menhir_lexer
      | _ ->
          _eRR ()
  
  and _menhir_goto_term : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState00 ->
          _menhir_run_19 _menhir_stack _v _tok
      | MenhirState09 ->
          _menhir_run_16 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState10 ->
          _menhir_run_11 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_16 : type  ttv_stack. ((ttv_stack, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var, _menhir_box_start) _menhir_cell1_type1 -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_type1 (_menhir_stack, _, tp) = _menhir_stack in
      let MenhirCell0_Var (_menhir_stack, id) = _menhir_stack in
      let MenhirCell1_Lambda (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_07 id t tp in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_11 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | RParen ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_LParen (_menhir_stack, _menhir_s) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_04 t in
          _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_13 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let b = _v in
      let _v = _menhir_action_02 b in
      _menhir_goto_application _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Lambda ->
          _menhir_run_02 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v


module MenhirBasics = struct
  
  exception Error
  
  let _eRR =
    fun _s ->
      raise Error
  
  type token = 
    | Var of (
# 14 "lib/parser.mly"
       (string)
# 15 "lib/parser.ml"
  )
    | Semicolon
    | RParen
    | Lambda
    | LParen
    | Equal
    | EOF
    | Dot
  
end

include MenhirBasics

# 1 "lib/parser.mly"
  

open Ast


# 35 "lib/parser.ml"

type ('s, 'r) _menhir_state = 
  | MenhirState00 : ('s, _menhir_box_start) _menhir_state
    (** State 00.
        Stack shape : .
        Start symbol: start. *)

  | MenhirState02 : (('s, _menhir_box_start) _menhir_cell1_Var, _menhir_box_start) _menhir_state
    (** State 02.
        Stack shape : Var.
        Start symbol: start. *)

  | MenhirState06 : (('s, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var, _menhir_box_start) _menhir_state
    (** State 06.
        Stack shape : Lambda Var.
        Start symbol: start. *)

  | MenhirState07 : (('s, _menhir_box_start) _menhir_cell1_LParen, _menhir_box_start) _menhir_state
    (** State 07.
        Stack shape : LParen.
        Start symbol: start. *)

  | MenhirState11 : (('s, _menhir_box_start) _menhir_cell1_application, _menhir_box_start) _menhir_state
    (** State 11.
        Stack shape : application.
        Start symbol: start. *)

  | MenhirState20 : (('s, _menhir_box_start) _menhir_cell1_binding, _menhir_box_start) _menhir_state
    (** State 20.
        Stack shape : binding.
        Start symbol: start. *)


and ('s, 'r) _menhir_cell1_application = 
  | MenhirCell1_application of 's * ('s, 'r) _menhir_state * (Ast.lc_expr)

and ('s, 'r) _menhir_cell1_binding = 
  | MenhirCell1_binding of 's * ('s, 'r) _menhir_state * (string * Ast.lc_expr)

and ('s, 'r) _menhir_cell1_LParen = 
  | MenhirCell1_LParen of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Lambda = 
  | MenhirCell1_Lambda of 's * ('s, 'r) _menhir_state

and ('s, 'r) _menhir_cell1_Var = 
  | MenhirCell1_Var of 's * ('s, 'r) _menhir_state * (
# 14 "lib/parser.mly"
       (string)
# 85 "lib/parser.ml"
)

and 's _menhir_cell0_Var = 
  | MenhirCell0_Var of 's * (
# 14 "lib/parser.mly"
       (string)
# 92 "lib/parser.ml"
)

and _menhir_box_start = 
  | MenhirBox_start of (Ast.lc_expr) [@@unboxed]

let _menhir_action_01 =
  fun b ->
    (
# 41 "lib/parser.mly"
             (b)
# 103 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_02 =
  fun a b ->
    (
# 42 "lib/parser.mly"
                               (EApp (a, b))
# 111 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_03 =
  fun n ->
    (
# 45 "lib/parser.mly"
            (EVar n)
# 119 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_04 =
  fun t ->
    (
# 46 "lib/parser.mly"
                               (t)
# 127 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_05 =
  fun n t ->
    (
# 34 "lib/parser.mly"
                                           ((n,t))
# 135 "lib/parser.ml"
     : (string * Ast.lc_expr))

let _menhir_action_06 =
  fun t ->
    (
# 30 "lib/parser.mly"
             (t)
# 143 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_07 =
  fun b p ->
    (
# 31 "lib/parser.mly"
                              (EApp(ELambda(fst b,p),snd b))
# 151 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_08 =
  fun p ->
    (
# 27 "lib/parser.mly"
                     (p)
# 159 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_09 =
  fun n t ->
    (
# 37 "lib/parser.mly"
                                      (ELambda (n, t))
# 167 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_action_10 =
  fun a ->
    (
# 38 "lib/parser.mly"
                    (a)
# 175 "lib/parser.ml"
     : (Ast.lc_expr))

let _menhir_print_token : token -> string =
  fun _tok ->
    match _tok with
    | Dot ->
        "Dot"
    | EOF ->
        "EOF"
    | Equal ->
        "Equal"
    | LParen ->
        "LParen"
    | Lambda ->
        "Lambda"
    | RParen ->
        "RParen"
    | Semicolon ->
        "Semicolon"
    | Var _ ->
        "Var"

let _menhir_fail : unit -> 'a =
  fun () ->
    Printf.eprintf "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

include struct
  
  [@@@ocaml.warning "-4-37"]
  
  let _menhir_run_18 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _v _tok ->
      match (_tok : MenhirBasics.token) with
      | EOF ->
          let p = _v in
          let _v = _menhir_action_08 p in
          MenhirBox_start _v
      | _ ->
          _eRR ()
  
  let rec _menhir_goto_program : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState20 ->
          _menhir_run_21 _menhir_stack _v _tok
      | MenhirState00 ->
          _menhir_run_18 _menhir_stack _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_21 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_binding -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _v _tok ->
      let MenhirCell1_binding (_menhir_stack, _menhir_s, b) = _menhir_stack in
      let p = _v in
      let _v = _menhir_action_07 b p in
      _menhir_goto_program _menhir_stack _v _menhir_s _tok
  
  let _menhir_run_16 : type  ttv_stack. ttv_stack -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _v _menhir_s _tok ->
      let t = _v in
      let _v = _menhir_action_06 t in
      _menhir_goto_program _menhir_stack _v _menhir_s _tok
  
  let rec _menhir_run_01 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Equal ->
          let _menhir_stack = MenhirCell1_Var (_menhir_stack, _menhir_s, _v) in
          let _menhir_s = MenhirState02 in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Var _v ->
              _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
          | Lambda ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | LParen ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
          | _ ->
              _eRR ())
      | EOF | LParen | Var _ ->
          let n = _v in
          let _v = _menhir_action_03 n in
          _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_03 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s ->
      let _tok = _menhir_lexer _menhir_lexbuf in
      let n = _v in
      let _v = _menhir_action_03 n in
      _menhir_goto_base _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_base : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState11 ->
          _menhir_run_12 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState00 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState20 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState06 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | MenhirState07 ->
          _menhir_run_10 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_12 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_application -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell1_application (_menhir_stack, _menhir_s, a) = _menhir_stack in
      let b = _v in
      let _v = _menhir_action_02 a b in
      _menhir_goto_application _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_goto_application : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match (_tok : MenhirBasics.token) with
      | Var _v_0 ->
          let _menhir_stack = MenhirCell1_application (_menhir_stack, _menhir_s, _v) in
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState11
      | LParen ->
          let _menhir_stack = MenhirCell1_application (_menhir_stack, _menhir_s, _v) in
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState11
      | EOF | RParen | Semicolon ->
          let a = _v in
          let _v = _menhir_action_10 a in
          _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
      | _ ->
          _eRR ()
  
  and _menhir_run_07 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_LParen (_menhir_stack, _menhir_s) in
      let _menhir_s = MenhirState07 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Lambda ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
  and _menhir_run_04 : type  ttv_stack. ttv_stack -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s ->
      let _menhir_stack = MenhirCell1_Lambda (_menhir_stack, _menhir_s) in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          let _menhir_stack = MenhirCell0_Var (_menhir_stack, _v) in
          let _tok = _menhir_lexer _menhir_lexbuf in
          (match (_tok : MenhirBasics.token) with
          | Dot ->
              let _menhir_s = MenhirState06 in
              let _tok = _menhir_lexer _menhir_lexbuf in
              (match (_tok : MenhirBasics.token) with
              | Var _v ->
                  _menhir_run_03 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
              | Lambda ->
                  _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | LParen ->
                  _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
              | _ ->
                  _eRR ())
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_goto_term : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      match _menhir_s with
      | MenhirState20 ->
          _menhir_run_16 _menhir_stack _v _menhir_s _tok
      | MenhirState00 ->
          _menhir_run_16 _menhir_stack _v _menhir_s _tok
      | MenhirState02 ->
          _menhir_run_14 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState06 ->
          _menhir_run_13 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | MenhirState07 ->
          _menhir_run_08 _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok
      | _ ->
          _menhir_fail ()
  
  and _menhir_run_14 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Var -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      match (_tok : MenhirBasics.token) with
      | Semicolon ->
          let _tok = _menhir_lexer _menhir_lexbuf in
          let MenhirCell1_Var (_menhir_stack, _menhir_s, n) = _menhir_stack in
          let t = _v in
          let _v = _menhir_action_05 n t in
          let _menhir_stack = MenhirCell1_binding (_menhir_stack, _menhir_s, _v) in
          (match (_tok : MenhirBasics.token) with
          | Var _v_0 ->
              _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v_0 MenhirState20
          | Lambda ->
              _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
          | LParen ->
              _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer MenhirState20
          | _ ->
              _eRR ())
      | _ ->
          _eRR ()
  
  and _menhir_run_13 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_Lambda _menhir_cell0_Var -> _ -> _ -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _tok ->
      let MenhirCell0_Var (_menhir_stack, n) = _menhir_stack in
      let MenhirCell1_Lambda (_menhir_stack, _menhir_s) = _menhir_stack in
      let t = _v in
      let _v = _menhir_action_09 n t in
      _menhir_goto_term _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  and _menhir_run_08 : type  ttv_stack. (ttv_stack, _menhir_box_start) _menhir_cell1_LParen -> _ -> _ -> _ -> _ -> _menhir_box_start =
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
  
  and _menhir_run_10 : type  ttv_stack. ttv_stack -> _ -> _ -> _ -> (ttv_stack, _menhir_box_start) _menhir_state -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok ->
      let b = _v in
      let _v = _menhir_action_01 b in
      _menhir_goto_application _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s _tok
  
  let _menhir_run_00 : type  ttv_stack. ttv_stack -> _ -> _ -> _menhir_box_start =
    fun _menhir_stack _menhir_lexbuf _menhir_lexer ->
      let _menhir_s = MenhirState00 in
      let _tok = _menhir_lexer _menhir_lexbuf in
      match (_tok : MenhirBasics.token) with
      | Var _v ->
          _menhir_run_01 _menhir_stack _menhir_lexbuf _menhir_lexer _v _menhir_s
      | Lambda ->
          _menhir_run_04 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | LParen ->
          _menhir_run_07 _menhir_stack _menhir_lexbuf _menhir_lexer _menhir_s
      | _ ->
          _eRR ()
  
end

let start =
  fun _menhir_lexer _menhir_lexbuf ->
    let _menhir_stack = () in
    let MenhirBox_start v = _menhir_run_00 _menhir_stack _menhir_lexbuf _menhir_lexer in
    v

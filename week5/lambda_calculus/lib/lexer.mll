{

open Parser

let sb = Buffer.create 256

exception SyntaxError of string

}

let id = ['_' 'a'-'z' 'A'-'Z'] ['_' 'a'-'z' 'A'-'Z' '0'-'9']*
let whitespace = [' ' '\t' '\r' '\n']+
let int = ['0'-'9']+

rule tok = parse
| whitespace { tok lexbuf }
| '('        { LParen }
| ')'        { RParen }
| ';'        { Semicolon }
| '='        { Equal }
| id as s    { Var s }
| eof        { EOF }
| "."        { Dot }
| "&"        { Lambda }
| _          { raise (SyntaxError ("Unexpected char: " ^ Lexing.lexeme lexbuf)) }

and string = parse
| '"'    { () }
| _ as c { Buffer.add_char sb c; string lexbuf }

and comment = parse
| "*/" { tok lexbuf }
| _    { comment lexbuf }

{

let tokenize (src : string) : token list =
  let rec loop i acc =
    if i >= String.length src
    then List.rev acc
    else match src.[i] with
      | '&' -> loop (i + 1) (Lambda :: acc)
      | '.' -> loop (i + 1) (Dot :: acc)
      | '(' -> loop (i + 1) (LParen :: acc)
      | ')' -> loop (i + 1) (RParen :: acc)
      | '=' -> loop (i + 1) (Equal :: acc)
      | ';' -> loop (i + 1) (Semicolon :: acc)
      | c when c = '_' || ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') ->
        let (ni, tok) = consume_id i src in
        loop ni (tok :: acc)
      | c when String.contains "\n\r\t " c -> loop (i + 1) acc
      | c -> raise (LexError ("Unexpected character: " ^ String.make 1 c))
  in
  loop 0 []

let tok_to_str : token -> string = function
  | Equal -> "="
  | LParen -> "("
  | RParen -> ")"
  | Semicolon -> ";"
  | Var s -> s
  | EOF -> "EOF"
  | Dot -> "."
  | Lambda -> "&"
let is_digit (c : char) : bool = '0' <= c && c <= '9'

let is_id_char (c : char) : bool =
  c = '_' || ('a' <= c && c <= 'z') || ('A' <= c && c <= 'Z') || is_digit c

let consume_id (i : int) (src : string) : int * token =
  let rec loop j acc =
    if j >= String.length src || not (is_id_char src.[j])
    then (j, Var acc)
    else loop (j + 1) (acc ^ String.make 1 src.[j]) in
  let (j, ret) = loop i "" in
  if j = i
  then raise (LexError "Tried to parse empty identifier")
  else (j, ret)

}
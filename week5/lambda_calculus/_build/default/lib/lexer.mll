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

let tokenize (s : string) : token list =
  let buf = Lexing.from_string s in
  let rec helper acc =
    match tok buf with
    | EOF -> List.rev acc
    | t -> helper (t :: acc) in
  helper []
let tok_to_str : token -> string = function
  | Equal -> "="
  | LParen -> "("
  | RParen -> ")"
  | Semicolon -> ";"
  | Var s -> s
  | EOF -> "EOF"
  | Dot -> "."
  | Lambda -> "&"
}
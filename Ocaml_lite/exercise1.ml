(*
x + y * 4 - 3 
%0 = mul i32 y, 4
%1 = sub i32 %0, 3 
%2 = add i32 %1, x 

x - x * x * x / 6
%0 = div i32 x, 6
%1 = mul i32 %0, x
%2 = mul i32 %1, x 
%3 = sub i32 x, %2

1 - x * x / 2 + y * y / 4
%0 = div i32 y, 4
%1 = mul i32 y, %0
%2 = div i32 x, 2
%3 = mul i32 x, %2
%4 = add i32 %3, %1 
%5 = add i32 1, -%4 
*) 
type expr = Add of expr * expr | Sub of expr * expr
          | Mul of expr * expr | Div of expr * expr
          | Int of int | Var of string

let auto (expression: expr): =
  let rec find_var (expression: expr): int = 
    match expression with (
      Add(e1,e2)-> 
      Sub(e1,e2)->
    )
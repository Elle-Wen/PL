(*ocaml lite*)

type int_list =
| Nil 
| Cons of int * int_list ;; 

let rec suffix_sum (lst: int_list) : int_list = 
  (match lst with 
  | Nil => Nil 
  | Cons (x, xs) => 
  (match xs with 
  | Nil => Cons (x, Nil)
  | Cons (y, ys) => Cons (y, suffix_sum xs) ));; 

  (*using AST*)

  (*
  
     *)
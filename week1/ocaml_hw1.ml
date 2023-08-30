type bstree =
  | Lf
  | Br of int * bstree * bstree

let rec insert (t : bstree) (i : int) : bstree =
  match t with
  | Lf -> Br (i, Lf, Lf)
  | Br (n, left, right) ->
    if i = n then t
    else if i < n then Br (n, insert left i, right)
    else Br (n, left, insert right i)

let insert_all (t : bstree) (is : int list) : bstree =
  List.fold_left insert t is

type arith =
  | Plus of arith * arith
  | Times of arith * arith
  | Negate of arith
  | Var of string
  | Num of int

(* NOTE: you may modify the function declarations as long as the names and
   types remain the same. For example, you might need to add "rec" in some
   declarations. *)

let remove_duplicates (lst : 'a list) : 'a list =
  failwith "Not implemented"

let prefix_sum (lst : int list) : int list =
  failwith "Not implemented"

let suffix_sum (lst : int list) : int list =
  failwith "Not implemented"

let table (f : 'a -> 'b -> 'c) (xs : 'a list)
          (ys : 'b list) : ('a * 'b * 'c) list list =
  failwith "Not implemented"

let binaries (n : int) : string list =
  failwith "Not implemented"

let without (t : bstree) (v : int) : bstree =
  failwith "Not implemented"

let flatten (t : bstree) : int list =
  failwith "Not implemented"

let free_vars (expr : arith) : string list =
  failwith "Not implemented"

let subst (id : string) (v : arith) (expr : arith) : arith =
  failwith "Not implemented"

type prop

let pprint (p : prop) : string =
  failwith "Not implemented"

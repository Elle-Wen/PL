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

let rec remove_duplicates (lst : 'a list) : 'a list =
match lst with
|[]->[]
|head::tail->head::(remove_duplicates(List.filter (fun x -> x<>head) tail))

let prefix_sum (lst : int list) : int list =
  let helper a b = a+b in
  let rec main (lst_1:int list):int list=
    (match lst_1 with
      |[]->[]
      |head::tail->List.fold_left helper 0 lst_1::(main tail)) 
  in
  List.rev (main (List.rev lst));;

let rec suffix_sum (lst : int list) : int list =
    let helper a b = a+b in
    match lst with
    |[]->[]
    |head::tail->List.fold_left helper 0 lst::(suffix_sum tail)

let table (f : 'a -> 'b -> 'c) (xs : 'a list)
          (ys : 'b list) : ('a * 'b * 'c) list list =
          let f_1 tuple_2 =
            (match tuple_2 with
            |(a,b)->(a,b,f a b)
            ) in
            let rec helper_1 n lst =
            (match lst with
            |[]->[]
            |h::t->(n,h)::(helper_1 n t)
            ) in
            let helper_1_helper n lst =
            List.map f_1 (helper_1 n lst) in
            let rec helper_2 lst1 lst2 =
            (match lst1 with
            |[]->[]
            |h::t->helper_1_helper h lst2 ::(helper_2 t lst2)
            ) in
            helper_2 xs ys

let rec binaries (n : int) : string list =
    let rec helper_prefix (prefix:string) (lst:string list):string list =
      (match lst with
      |[]->[]
      |h::t->[prefix^h] @ (helper_prefix prefix t)
      )
      in
  let helper_combine (lst:string list):string list =
  (helper_prefix "0" lst ) @ (helper_prefix "1" lst)
  in
  if n=0 then [""] else if n=1 then ["0";"1"] else (helper_combine (binaries (n-1)))

  let rec without (t : bstree) (v : int) : bstree =
    let rec find_max tree =
      match tree with
    | Lf -> failwith "Empty tree"
    | Br (value, _, Lf) -> value
    | Br (_, _, right) -> find_max right
    in
    let rec remove tree key =
      (match tree with
      | Lf -> Lf
      | Br (value, left, right) ->
        if key < value then
          Br (value, remove left key, right)
        else if key > value then
          Br (value, left, remove right key)
        else
          match (left, right) with
          | (Lf, _) -> right
          | (_, Lf) -> left
          | _ ->
            let max_left = find_max left in
            Br (max_left, remove left max_left, right)) in 
      remove t v
let rec flatten (t : bstree) : int list =
  let rec find_min t = 
    match t with 
    | Lf-> failwith "empty tree"
    | Br (value,Lf,_)->value 
    | Br (_,left,_)-> find_min left in 
  match t with 
  |Lf->[]
  |_->[find_min t] @ flatten (without t (find_min t))

let free_vars (expr : arith) : string list =
  let rec main expr = 
  match expr with 
  | Plus (a, b)-> main a @ main b 
  | Times (a, b)-> main a @ main b 
  | Negate a-> main a 
  | Num n -> []
  | Var str-> [str] in 
  remove_duplicates (main expr) 

let rec subst (id : string) (v : arith) (expr : arith) : arith =
  match expr with 
  | Plus (a,b)->Plus (subst id v a, subst id v b) 
  | Times (a,b)-> Times (subst id v a, subst id v b) 
  | Negate a -> Negate (subst id v a)
  | Num n -> Num n 
  | Var str->if str=id then v else Var str 

type prop = 
  |And of prop * prop 
  |Or of prop * prop 
  |Not of prop 
  |Sym of string 

let rec pprint (p : prop) : string =
  match p with 
  | And (a,b)-> "(" ^ pprint(a) ^ "&&" ^pprint(b)^")"  
  | Or (a,b)-> "(" ^ pprint(a) ^ "||" ^ pprint(b)^")"
  | Not a-> "(" ^ "~" ^ pprint(a)^ ")" 
  | Sym str -> "(" ^ str ^ ")"  

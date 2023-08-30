(* Recursion *)

let rec fact n =
  if n = 0
  then 1
  else n * fact (n - 1)

(* Types *)

let double x = 2 * x

(* double works with ints *)

(* let double (x : float) : float =
 *   2 * x
 *
 * Type Error!
 *)

let double1 (x : float) : float =
  2. *. x

let double2 : float -> float =
  fun x -> 2. *. x

let apply_twice (f : float -> float) (x : float) : float =
  f (f x)

let add1 (x : int) (y : int) : int =
  x + y

let add2 : int -> int -> int =
  fun x y -> x + y

(* Polymorphism *)

let id1 x = x

let id2 (x : 'a) : 'a = x

let twice (f : 'a -> 'a) (x : 'a) : 'a =
  f (f x)

(* Lists *)

let example_list1 : int list =
  1 :: (2 :: (3 :: (4 :: [])))

let example_list2 : int list =
  [1; 2; 3; 4]

let rec length (l : 'a list) : int =
  match l with
  | [] -> 0
  | head :: tail -> 1 + length tail

let rec last (l : 'a list) : 'a =
  match l with
  | [] -> failwith "Error"
  | head :: [] -> head
  (* | [head] -> head   also works here*)
  | head :: tail -> last tail

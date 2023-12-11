type _ expr =
  | Const : int -> int expr
  | Add : int expr * int expr -> int expr
  | Mul : int expr * int expr -> int expr
  | Lt : int expr * int expr -> bool expr
  | Not : bool expr -> bool expr
  | And : bool expr * bool expr -> bool expr
  | If : bool expr * 'a expr * 'a expr -> 'a expr
  | CString : string -> string expr
  | Concat : string expr * string expr -> string expr
  | StrOfInt : int expr -> string expr

let rec interpret : type a. a expr -> a = function
| Const i -> i
| Add (e1, e2) -> interpret e1 + interpret e2
| Mul (e1, e2) -> interpret e1 * interpret e2
| Lt (e1, e2) -> interpret e1 < interpret e2
| Not e -> not (interpret e)
| And (e1, e2) -> interpret e1 && interpret e2
| If (e1, e2, e3) -> if interpret e1 then interpret e2 else interpret e3
| CString s -> s
| Concat (e1, e2) -> interpret e1 ^ interpret e2
| StrOfInt e -> string_of_int (interpret e)

(*
  type ('a, 'b) either = Left of 'a | Right of 'b

1. (A => B) => (B => C) => A => C
    type: ('a -> 'b ) -> ('b -> 'c) -> 'a -> 'c

    fun f g x -> g (f x)

2. ((A \/ B) => C) => ((A => C) /\ (B => C))
    type: (Either 'a 'b -> 'c) -> (('a -> 'c) * ('b -> 'c))

    fun f -> ((fun a -> f (Left a)), (fun b -> f (Right b)))

3. (A => B) => (!B) => (!A)
    type: ('a -> 'b) -> ('b -> void) -> ('a -> void)

    fun f g -> (fun x -> g (f x))

4. ((!A) \/ B) => A => B
    type: (Either 'a -> void 'b) -> 'a -> 'b

    to_void : x -> void 
    fun e a -> 
        match e with
        | Left to_void -> void (to_void a)
        | Right b -> b

5. (A /\ B) => !((!A) \/ (!B))
    type: ('a * 'b) -> ((Either ('a -> void) ('b -> void)) -> void )

    fun (a, b) -> 
    fun e -> match e with
      | Left f -> f a
      | Right g -> g b
*) 

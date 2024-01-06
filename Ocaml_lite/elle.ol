type list =
  | Nil
  | Cons of string * list
  | Combine of list * list ;;

let rec helper_prefix (prefix:string) (lst:list):list =
  match lst with
  |Nil => Nil
  |Cons (h,t) => Cons (prefix^h,  (helper_prefix prefix t)) ;; 

let helper_combine (lst:list):list =
  Combine ((helper_prefix "0" lst ), (helper_prefix "1" lst)) ;;

let rec binaries (n : int) : list =
  if n=0 then Cons ("",Nil)
  else if n=1 then Cons ("0", Cons ("1", Nil))
       else (helper_combine (binaries (n-1))) ;; 
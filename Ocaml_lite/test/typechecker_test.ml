open OUnit2

(*
  1. 
  let f = 2;;
  let _ = f ^ "x";;

  fail

  2. 
  let f = 2;;
  let _ = f + 3;;

  pass

  3.
  let f = "x";;
  let _ = f + 2;;

  fail

  4. 
  let f = "x";;
  let _ = f ^ "y"

  pass

  5.
  let f = "x";;
  let _ = f * 2;;

  fail 

  6.
  let f = "x";;
  let _ = f - 2;;

  fail 

  7. 
  let f = "x";;
  let _ = f / 2;;

  fail 

  8. 
  let f = "x";;
  let q = "y";;
  let z = f / q;;

  fail 

  9. 
  let "x"=1 in x+1;;

  fail 

  10. 
  if "a" then "b" else "c";;

  fail 



*)
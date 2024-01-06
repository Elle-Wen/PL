open OUnit2
(*
  1. let function x y : int = x + y ;;

      ValDef(function,[x;y],IntType,ComputeExpr(x,PlusOp,y))
  2. let function : int = 1 + 2 ;;

      ValDef(function,None,IntType,ComputeExpr(1,PlusOp,2)) 
  3. let function x = x ;;

      ValDef(function,[x],None,VarExpr(x))
  4. let function = 1 ;;

      ValDef(function,None,None,IntExpr)
  5. let rec function x = 
    if x=0 then 0 
    else function x-1  ;;

    RecDef(function, [x], None, IfExpr(ComputeExpr(x,EqOp,0),0,ExprExpr(VarExpr(function),ComputeExpr(x,MinusOp,1))))
  6. let rec function x : int = 
    if x=0 then 0 
    else function (x-1) ;;

    RecDef(function, [x], IntType, IfExpr(ComputeExpr(x,EqOp,0),0,ExprExpr(VarExpr(function),ComputeExpr(x,MinusOp,1))))
  7. type tok_list =
    | Nil
    | Cons of token * tok_list ;;

    TypeDef(tok_list, [Nil; Cons,ToType(token, tok_list)])

  9. "let _ = let function x = x + 1 in x + 2;;"

*)

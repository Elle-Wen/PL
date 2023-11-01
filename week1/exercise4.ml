let rec factorial n =
  match n with
  |0->0
  |1->1
  |_->n * factorial (n-1);;

let rec power a b =
  match b with
  |0->1
  |_->(power a (b-1))*a;;

let rec map f lst =
  match lst with
  |[]->[]
  |h::t->[f h] @ map f t;;

  type 'a my_option = Any of 'a | None


let rec lookup (lst:('a * 'b) list) (key:'a) :'b my_option =
  (match lst with
  |[]->None
  |(a,b)::t-> if a=key then (Any b) else lookup t key
  )
    
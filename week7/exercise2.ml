module ListM MONAD = sig 
  type 'a m = 'a list 
  val return : 'a -> 'a m
  val (>>=): 'a m -> ('a -> 'b m) -> 'b m
end 



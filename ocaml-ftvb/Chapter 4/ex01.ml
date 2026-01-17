(* return even numbered elements in a list*)

let rec evens l = 
  match l with
  [] -> []
  | [_] -> []
  | _::b::t -> b :: evens t
  
  
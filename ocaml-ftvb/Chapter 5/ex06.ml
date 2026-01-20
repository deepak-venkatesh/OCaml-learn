(* important exercise of merging helper functions within one function itself, also important to note lexical scoping *)

let rec sort lst =
  let rec insert x lst = 
  match lst with
  [] -> [x]
  | h::t -> if x <=h then x::h::t else h::insert x t
  in
  match lst with
  [] -> []
  | h::t -> insert h (sort t)


(* write the classic member function like we did in the little schemer *)

let rec member x lst =
  match lst with
  [] -> false
  | h::t -> h = x || member x t


  

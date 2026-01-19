(* write a make set function *)

let rec member x lst =
  match lst with
  [] -> false
  | h::t -> h = x || member x t

(* we can use this member function to drop an element in the list which occurs more than once *)

let rec make_set lst =
  match lst with
  [] -> []
  | h::t -> if member h t then make_set t else  h :: make_set t
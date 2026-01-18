(* drop last element in a list, also write a tail recursive fn *)

let rec drop lst =
  match lst with
  [] -> []
  | [_] -> []
  | h::t -> h:: drop t


let rec drop_tail_rec_acc lst acc = 
  match lst with
  [] -> acc
  | [_] -> acc
  | h::t -> drop_tail_rec_acc t (acc @ [h])

let drop_tail_rec lst = drop_tail_rec_acc lst []
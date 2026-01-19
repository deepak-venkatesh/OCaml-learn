let rec reverse_tail_acc lst acc =
  match lst with
  [] -> acc
  | h::t -> reverse_tail_acc t (h :: acc)  

let reverse_tail lst = reverse_tail_acc lst []

(* In the accumulator version we only recur as long as the length of the list *)
(* recursive function to count 'true' in a list *)

let rec count_true lst = 
  match lst with 
  [] -> 0
  | true::t -> 1 + count_true t
  | _::t -> count_true t


(* tail recursive function, this is important *)

let rec count_true_tail lst n = 
  match lst with
  [] -> n
  | true::t -> count_true_tail t (n + 1)
  | _::t -> count_true_tail t n
  
let count_tail lst = count_true_tail lst 0
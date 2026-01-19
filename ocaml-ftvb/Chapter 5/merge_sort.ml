(* merge sort example from the book. need to understand algorithmic complexity deeply *)

(* merge > we will write a merge function which takes 2 already sorted lists and merges them so that it is sorted *)
(* mergesort > for a list which is unsorted we can split it into two parts then recursively get the list down to a single 
or no element and kep merging the sorted lists then *)

(* merge *)

let rec merge lst1 lst2 = 
  match lst1, lst2 with
  [], lst -> lst
  | lst, [] -> lst
  | h_lst1::t_lst1, h_lst2::t_lst2 ->
    if h_lst1 < h_lst2
      then h_lst1::merge t_lst1 (h_lst2::t_lst2)
      else h_lst2::merge (h_lst1::t_lst1) t_lst2

(* writing the helper functions of length, take and drop *)

let rec length lst =
  match lst with
  [] -> 0
  | h::t -> 1 + length t

let rec take n lst = 
  if n = 0 then [] else
    match lst with
    [] -> []
    | h::t -> h::take (n - 1) t

let rec drop n lst = 
  if n = 0 then lst else
    match lst with
    [] -> []
    | h::t -> drop (n - 1) t

(* mergesort *)
let rec mergesort lst = 
  match lst with
  [] -> []
  | [x] -> [x]
  | _ ->
    let left = take (length lst / 2) lst in
    let right = drop (length lst /2) lst in
    merge (mergesort left) (mergesort right)




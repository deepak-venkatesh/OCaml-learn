(* we need to probably have one function do the length of lst divided by 2 and then use the return value, or one local variable? that
is better since in a function call there will be two calls. but how do we put a variable inside a match case? Function call is wrong. For
local variable I could just use another let...in perhaps  *)

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
    let nth_value = (length lst /2) in
    let left = take nth_value lst in
    let right = drop nth_value lst in
    merge (mergesort left) (mergesort right)
(* write a function to check if list is already sorted or not *)

(* thought process:
-> for an empty list it is already sorted
-> for a 2 element list we can check if it is sorted 
-> and then check from 3rd element onwards the list recursively *)

let rec check_sort lst =
  match lst with
  [] -> true
  | [a] -> true
  | [a ; b] -> if a <= b then true else false
  | a::b::t -> if a <= b && check_sort t then true else false
  
  
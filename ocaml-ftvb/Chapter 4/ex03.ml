(* 
Write a function which, given a list, builds a palindrome from it. A palindrome is a list which
equals its own reverse. You can assume the existence of rev and @. Write another function which
determines if a list is a palindrome

1. Reverse a function
2. Make palindrome function
3. Predicate for palindrome (wonder if I can use the same language as scheme)
*)

(* this is an inefficient reverse and will be O(n^2) since we are using append *)
  let rec reverse lst = 
    match lst with
    [] -> []
    | [a ; b] -> [b ; a]
    | h::t -> reverse t @ [h]

(* we can write a tail recursive reverse function using an accumulator which is O(n) complexity*)

let rec reverse_tail_acc lst acc =
  match lst with
  [] -> acc
  | h::t -> reverse_tail_acc t (h :: acc)  

let reverse_tail lst = reverse_tail_acc lst []

(* I can make the the helper function remain inside the actual public function. But that is for another exercise *)

(* palindrome creating function *)

(* take cdr/tail of a list *)

let cdr lst = 
  match lst with
  [] -> []
  | _::t -> t

let palindrome_maker lst = lst @ (cdr (reverse_tail lst))

(* predicate function to check whether a list is a palindrome or not *)

let palindrome_test lst = 
  if lst = (reverse_tail lst) then true else false


(* not sure if there is an inbuilt map function, in common lisp we have mapcar/funcall which is pretty useful *)

let rec map f lst =
  match lst with
  [] -> []
  | h :: t -> f h :: map f t

let halve x = x / 2
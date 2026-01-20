let rec evens lst =
  match lst with
  [] -> []
  | h::t -> (h mod 2 = 0) :: evens t

  
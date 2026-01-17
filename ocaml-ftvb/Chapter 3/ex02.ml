let rec summation n = 
  match n with
  1 -> 1
  | _ -> n + summation (n - 1)
let rec double lst =
  match lst with
  [] -> []
  | h::t -> (h * 2) :: double t


  
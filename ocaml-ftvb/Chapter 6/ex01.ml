let rec calm lst =
  match lst with
  [] -> []
  | '!' :: t -> '.' :: calm t
  | h :: t -> h :: calm t


let rec map f lst =
  match lst with
  [] -> []
  | h :: t -> f h :: map f t

let calm_map x = 
  match x with
  '!' -> '.'
  | _ -> x

  



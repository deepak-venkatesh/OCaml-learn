(* The exercise should have been stated slightly more clearly *)

let samplefn x =
  match 1 + 1 with
  2 ->
    (match 2 + 2 with 
    3 -> 4
    | 4 -> 5)

utop # samplefn 10;;
- : int = 5
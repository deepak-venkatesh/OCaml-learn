utop # max_int;;
- : int = 4611686018427387903

utop # min_int;;
- : int = -4611686018427387904


utop # max_int + 1;;
- : int = -4611686018427387904
(* goes back to min_int number *)


utop # min_int - 1;;
- : int = 4611686018427387903
(* goes back to max_int number *)

(* they are cyclical perhaps *)
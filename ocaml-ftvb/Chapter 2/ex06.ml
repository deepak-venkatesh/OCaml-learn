utop # let x = 1 in let x = 2 in x + x;;
Line 1, characters 4-5:
Warning 26 [unused-var]: unused variable x.

- : int = 4


(* we can see by changing the first variable to y that this is the one which does not get used in the evaluation *)
utop # let y = 1 in let x = 2 in x + x;;
Line 1, characters 4-5:
Warning 26 [unused-var]: unused variable y.

- : int = 4
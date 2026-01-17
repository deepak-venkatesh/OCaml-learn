utop # let rec summation n = if n = 1 then 1 else n + summation (n - 1);;
val summation : int -> int = <fun>


utop # summation 10;;
- : int = 55
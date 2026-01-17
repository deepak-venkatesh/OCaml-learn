utop # let rec power x n = if n = 1 then x else x * power x (n - 1);;
val power : int -> int -> int = <fun>

utop # power 2 5;;
- : int = 32

utop # power 2 10;;
- : int = 1024
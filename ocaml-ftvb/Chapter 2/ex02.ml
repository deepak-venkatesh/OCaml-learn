utop # let non_zero_fn a b =
if (a <> 0) && (b <> 0) then true else false;;
val non_zero_fn : int -> int -> bool = <fun>

utop # non_zero_fn 2 3;;
- : bool = true

utop # non_zero_fn 0 2;;
- : bool = false
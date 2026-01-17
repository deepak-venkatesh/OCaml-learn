utop # let rec factorial n =
  if n > 0 then 
    if n = 1 then 1 else n * factorial (n - 1)
else
  if n = 0 then 1 else 0;;
val factorial : int -> int = <fun>


(* this is a comment *)

utop # 17;;
- : int = 17

utop # 1 + 2 * 3 + 4;;
- : int = 11

utop # 800 / 80 / 8 ;; (* Left associative and only quotient is returned *)
- : int = 1

utop # 400 > 200;;
- : bool = true

utop # 1 <> 1;;
- : bool = false

utop # true || true;;
- : bool = true

utop # true && false;;
- : bool = false

utop # if true then false else true;;
- : bool = false




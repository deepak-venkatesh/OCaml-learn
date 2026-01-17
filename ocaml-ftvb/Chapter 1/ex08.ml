(* ASCII is probably used to compare single char and for bools true has higher 'value' than false *)

utop # 'p' > 'q';;
- : bool = false


utop # 'p' <> 'q';;
- : bool = true


utop # 'p' <> 'p';;
- : bool = false


utop # true > false;;
- : bool = true


utop # true <> false;;
- : bool = true

(*

The expression is:

1 + 2 mod 3
(1 + 2) mod 3
1 + (2 mod 3)

*)


utop # 1 + 2 mod 3;;
- : int = 3

(* this is so because mod has precedence over +. Mod returns 2 since 3 times 0 is 0 and the remainder is 2*)

utop # (1 + 2) mod 3;;
- : int = 0

(* brackets have precedence *)

utop # 1 + (2 mod 3);;
- : int = 3

(* brackets have precedence *)


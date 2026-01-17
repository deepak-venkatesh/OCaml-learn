utop # let isconsonant c = if ( c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u') then false else true;;
val isconsonant : char -> bool = <fun>

utop # isconsonant 'b';;
- : bool = true

utop # isconsonant 'e';;
- : bool = false
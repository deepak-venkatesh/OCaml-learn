(* this is so because the nth_value variable we computed as length of list divided by 2 at the minimum can be 0 and always an integer.
the take and drop functions have handling for 0 as well as empty lists so take and drop will never get incorrect arguments when they are used in this
mergesort function *)
(* my observation is 
-> when the lists are equal in length then the first element is being compared and if that is same then next element and so forth 
-> when the length is different then one list is smaller and the test will get over once we go over all the elements of the shorter list
*)

(*
In this example the sorted list should be in the order of 'one' 'three' 'two'
-> the first two elements are lists of length 3 and the last is of length 4
-> the first list has all elements 'smaller' in the alphabetical sense than the second or third list
-> the third list is 'smaller' so it comes in second but the length wise smaller list runs out and is pushed to the end
test in insertion sort below
*)

utop # sort [['o';'n';'e'];['t';'w';'o'];['t';'h';'r';'e';'e']];;
- : char list list =
[['o'; 'n'; 'e']; ['t'; 'h'; 'r'; 'e'; 'e']; ['t'; 'w'; 'o']]
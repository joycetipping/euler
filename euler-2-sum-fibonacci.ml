(* Joyce Tipping
   First written: 11 Nov 2009
   Last modified: 11 Nov 2009

   Project Euler Problem 2:
   Add all the even valued fibonacci numbers which do not exceed
   four million
 *)

let rec sum_fibonacci first second sum =
  if (second > 4000000)
  then sum
  else
    if ((second mod 2) == 0)
    then sum_fibonacci second (first + second) (sum + second)
    else sum_fibonacci second (first + second) sum;;

print_int (sum_fibonacci 1 2 0);;
print_char '\n';;

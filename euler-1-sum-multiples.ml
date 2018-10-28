(*Joyce Tipping
  First written: 9 Nov 2009
  Last modified: 9 Nov 2009
  
  Project Euler Problem 1: Add all the natural numbers below one 
  thousand that are multiples of 3 or 5.
 *)

let rec sum_multiples i sum =
  if (i == 1000)
  then sum
  else
    if ((i mod 3) = 0 || (i mod 5) = 0)
    then sum_multiples (i + 1) (sum + i)
    else sum_multiples (i + 1) sum;;

print_int (sum_multiples 0 0);;
print_char '\n';;

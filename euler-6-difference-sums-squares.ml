(* Joyce Tipping
   First written: 4 Dec 2009
   Last modified: 4 Dec 2009
  
   Project Euler Problem 6:
   Find the difference between the sum of the squares of the first 
   one hundred natural numbers and the square of the sum.
*)

let square x = (x * x);;

let difference n =
  let rec difference' n sum_of_squares sum =
    if (n == 0)
    then ((square sum) - sum_of_squares)
    else (difference' (n - 1) (sum_of_squares + (square n)) (sum + n)) in
  difference' n 0 0;;

print_int (difference 10);;
print_string ("\n");;
print_int (difference 100);;
print_string ("\n");;

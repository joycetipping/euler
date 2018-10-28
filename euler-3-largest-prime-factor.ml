(* Joyce Tipping
   First written: 12 Nov 2009
   Last modified: 12 Nov 2009

   Project Euler Problem 3:
   Find the largest prime factor of the number 600851475143.
 *)

open Int64;;

let giant_number = 600851475143L;;

let prime_check number =
  let rec prime_check' n =
    if (n * n > number) then true
    else
      if (number mod n == 0) then false
      else prime_check' (n + 1) in
  prime_check' 2;;

let rec largest_prime_factor factor =
  if ((rem giant_number (of_int factor)) == zero) then
    if prime_check factor then factor
    else largest_prime_factor (factor - 1)
  else 0;;

print_int (largest_prime_factor (truncate (sqrt (to_float giant_number))));;

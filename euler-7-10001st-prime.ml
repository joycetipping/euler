(* Joyce Tipping
   First written: 4 Dec 2009
   Last modified: 6 Dec 2009
  
   Project Euler Problem 7:
   What is the 10001st prime number? *)

let prime_check number =
  let rec prime_check' n =
    if (n * n > number) then true
    else
      if (number mod n == 0) then false
      else prime_check' (n + 1) in
  prime_check' 2;;

let find_10001st_prime =
  let rec find_helper' candidate count =
    if (prime_check candidate)
    then begin
      let count = (count + 1) in     
      if (count == 10001)
      then candidate
      else find_helper' (candidate + 1) count
    end else find_helper' (candidate + 1) count in
  find_helper' 2 0;;

print_int (find_10001st_prime);;
print_string ("\n");;

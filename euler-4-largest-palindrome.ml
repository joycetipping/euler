(* Joyce Tipping
   First written: 01 Dec 2009
   Last modified: 01 Dec 2009

   Project Euler Problem 4:
   Find the largest palindrome made from the product of two 3-digit numbers.
*)

let reverse number =
  let rec reverse' original reversed =
    let ones_digit = original mod 10            in
    let rest       = original  /  10            in
    let reversed   = 10 * reversed + ones_digit in
    if (rest == 0) then reversed else reverse' rest reversed in
  reverse' number 0;;

let rec palindrome =
  let largest = ref 0 in
  for i = 999 downto 1 do
    for j = 999 downto 1 do
      let product = i * j in
      if ((product == (reverse product)) && (product > !largest))
      then (largest := product)
    done
  done;
  !largest;;

print_int (palindrome);;

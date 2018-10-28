; Joyce Tipping
; First written: 2 Dec 2009
; Last modified: 2 Dec 2009
;
; Project Euler Problem 6:
; Find the difference between the sum of the squares of the first 
; one hundred natural numbers and the square of the sum.

(defun square (x) (* x x))

(defun difference (n &optional (sum-of-squares 0) (sum 0))
  (if (zerop n) 
      (- (square sum) sum-of-squares)
      (difference (- n 1) (+ sum-of-squares (square n)) (+ sum n))
  )
)

(print (difference 10))
(print (difference 100))

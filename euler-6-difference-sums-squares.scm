; Joyce Tipping
; First written: 4 Dec 2009
; Last modified: 4 Dec 2009
;
; Project Euler Problem 6:
; Find the difference between the sum of the squares of the first 
; one hundred natural numbers and the square of the sum.

(define (square x) (* x x))

(define (difference n)
  (let diff ((n              n)
             (sum-of-squares 0)
             (sum            0))
    (if (zero? n)
        (- (square sum) sum-of-squares)
        (diff (- n 1) (+ sum-of-squares (square n)) (+ sum n)) 
    )
  )
)

(write (difference 10))
(newline)
(write (difference 100))
(newline)

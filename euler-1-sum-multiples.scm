; Joyce Tipping
; First written: 9 Nov 2009
; Last modified: 11 Nov 2009
;
; Project Euler Problem 1: Add all the natural numbers below one thousand
; that are multiples of 3 or 5.

(define (summing-machine i sum)
    (if (= i 1000)
        sum
        (if (or (= 0 (remainder i 3)) (= 0 (remainder i 5)))
            (summing-machine (+ i 1) (+ i sum))
            (summing-machine (+ i 1) sum)
        )
    )
)

(write (summing-machine 0 0))
(newline)

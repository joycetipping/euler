; Joyce Tipping
; First written: 11 Nov 2009
; Last modified; 11 Nov 2009
;
; Project Euler Problem 2:
; Add all the even valued fibonacci numbers which do not exceed 
; four million.

(define (sum-fibonacci first-term second-term sum)
    (if (> second-term 4000000)
        sum
        (if (= (remainder second-term 2) 0)
            (sum-fibonacci second-term (+ first-term second-term) (+ sum second-term))
            (sum-fibonacci second-term (+ first-term second-term) sum)
        )
    )
)

(write (sum-fibonacci 1 2 0))
(newline)

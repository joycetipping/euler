; Joyce Tipping
; First written: 9 Nov 2009
; Last modified: 9 Nov 2009
;
; Project Euler Problem 1: Add all the natural numbers below one thousand
; that are multiples of 3 or 5.

(defun summing-machine (i sum)
    (if (equal i 1000)
        sum
        (if (or (equal 0 (rem i 3)) (equal 0 (rem i 5)))
            (summing-machine (+ i 1) (+ i sum))
            (summing-machine (+ i 1) sum)
        )
    )
)

(format t "~a~%" (summing-machine 0 0))

; Joyce Tipping
; First written: 29 Nov 2009
; Last modified: 29 Nov 2009
;
; Project Euler Problem 3:
; Find the largest prime factor of the number 600851475143.

(defconstant giant-number 600851475143)

(defun prime-check (candidate &optional (n 2))
  (if (> (* n n) candidate)
    t
    (if (= (rem candidate n) 0)
      nil
      (prime-check candidate (+ n 1))
    )
  )
)

;(defun prime-check (the-number)
;  (let ((sqrt-number (sqrt the-number)))
;    (loop for i from 2 to sqrt-number do
;      (if (= (rem the-number i) 0) (return-from prime-check nil))
;    )
;    t
;  )
;)

(defun largest-prime-factor (number &optional (low-factor 2))
  (multiple-value-bind (high-factor remainder) (truncate number low-factor)
;    (print low-factor)
;    (print high-factor)
    (if (and (zerop remainder) (prime-check high-factor))
        high-factor
        (largest-prime-factor number (1+ low-factor))
    )
  )
)

(print (largest-prime-factor giant-number))

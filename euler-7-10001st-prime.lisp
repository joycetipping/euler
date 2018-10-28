; Joyce Tipping
; First written: 6 Dec 2009
; Last modified: 6 Dec 2009
;
; Project Euler Problem 7:
; What is the 10001st prime number?

(defun prime-check (candidate &optional (n 2))
  (if (> (* n n) candidate)
    t
    (if (= (rem candidate n) 0)
      nil
      (prime-check candidate (+ n 1))
    )
  )
)

(defun find-10001st-prime (&optional (candidate 2) (count 0))
  (if (prime-check candidate)
      (progn 
        (setf count (1+ count))
        (if (= count 10001)
            (return-from find-10001st-prime candidate)
        )
      )
  )
  (find-10001st-prime (1+ candidate) count)
)

(print (find-10001st-prime))

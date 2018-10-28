; Joyce Tipping
; First written: 30 Nov 2009
; Last modified: 30 Nov 2009
; 
; Project Euler Problem 4:
; Find the largest palindrome made from the product of two 3-digit numbers.

(defun reverse (original &optional (reversed 0))
  (multiple-value-bind (rest ones_digit) (truncate original 10)
    (let ((reversed (+ (* 10 reversed) ones_digit)))
      (if (= rest 0)
          reversed
          (reverse rest reversed)
      )
    )
  )
)

(defun palindrome ()
  (let ((largest 0))
    (loop for i from 999 downto 1 do
      (loop for j from 999 downto 1 do
        (let ((product (* i j)))
          (if (and (= product (reverse product)) (> product largest))
              (setf largest product)
          )
        )
      )
    )
    largest
  )
)

(print (palindrome))
(print (reverse 12345))
(print (reverse 123456789))

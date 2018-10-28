; Joyce Tipping
; First written: 1 Dec 2009
; Last modified: 1 Dec 2009
; 
; Project Euler Problem 4:
; Find the largest palindrome made from the product of two 3-digit numbers.

(define (reverse_number number)
  (let reverse_number* ((original number)
                        (reversed 0))
    (let* ((ones_digit (remainder original 10))
           (rest       (truncate (/ original 10)))
           (reversed   (+ (* 10 reversed) ones_digit)))
        (if (zero? rest)
            reversed
            (reverse_number* rest reversed)
        )
    )
  )
)

(define (palindrome )
  (let ((largest 0))
    (let outer_loop ((i 999))
      (let inner_loop ((j 999))
        (let ((product (* i j)))
          (if (and (= product (reverse_number product)) (> product largest))
              (set! largest product)
          )
        )
        (and (positive? j) (inner_loop (1- j)))
      )
      (and (positive? i) (outer_loop (1- i)))
    )
    largest
  )
)

(write (palindrome))
(newline)
(write (reverse_number 12345))
(newline)
(write (reverse_number 123456789))
(newline)

; Joyce Tipping
; First written: 12 Nov 2009
; Last modified: 12 Nov 2009
;
; Project Euler Problem 3:
; Find the largest prime factor of the number 600851475143.


(define big-number 600851475143)

; A function that beginning with start, iterates through the natural numbers. 
(define (naturals-from start)
  (lambda () (set! start (+ start 1)) start))

; A function that applies 'transform' to the object that 'source' returns.
(define (element-map transform source)
  (lambda () (transform (source))))

; A function that finds the first object in an ordered set (iterated through by 'source') that satisfies a condition ('predicate').
(define (element-filter predicate source)
  (lambda ()
    (let self ((immediate (source)))
      (if (predicate immediate)
        immediate
        (self (source))))))

; A predicate that determines whether a number is prime.
(define (is-prime number)
  (let self ((n 2))
    (if (> (* n n) number)
      #t
      (if (= (remainder number n) 0)
        #f 
        (self (+ n 1))))))

(define (divider n)
  (/ big-number n))

(define (divisible-by n)
  (= (remainder big-number n) 0))

(write ((element-filter is-prime (element-map divider (element-filter divisible-by (naturals-from 1))))))

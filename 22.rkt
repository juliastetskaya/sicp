#lang racket

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (square x) (* x x))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (search-for-primes num1 num2 count)
  (if (and (> count 0) (< num1 num2))
      (if (timed-prime-test num1)
          (search-for-primes (+ num1 2) num2 (- count 1))
          (search-for-primes (+ num1 2) num2 count))
      (display "Finish!")))

(define (timed-prime-test n) 
  (start-prime-test n (current-inexact-milliseconds)))

(define (start-prime-test n start-time)
  (if (prime? n)
       (report-prime n (- (current-inexact-milliseconds) start-time))
      false))

(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))

> (search-for-primes 1001 2000 3)
;1009 *** 0.0029296875
;1013 *** 0.001953125
;1019 *** 0.001953125
;Finish!

> (search-for-primes 10001 20000 3)
;10007 *** 0.006103515625
;10009 *** 0.006103515625
;10037 *** 0.006103515625
;Finish!

> (search-for-primes 100001 200000 3)
;100003 *** 0.02001953125
;100019 *** 0.01904296875
;100043 *** 0.01904296875
;Finish!

> (search-for-primes 1000001 2000000 3)
;1000003 *** 0.06201171875
;1000033 *** 0.06103515625
;1000037 *** 0.060791015625
;Finish!
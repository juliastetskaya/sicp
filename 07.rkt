#lang racket

(require rackunit)

(define (sqrt-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(check-equal? (sqrt 9) 3.000000001396984)
(check-equal? (square (sqrt 1000)) 1000.000369924366)
(check-equal? (sqrt 0.01) 0.10000000000139897)
(check-equal? (sqrt 0.000009) 0.0030000000001273205)
(check-equal? (sqrt 90000) 300.0000000008298)

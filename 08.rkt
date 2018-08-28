#lang racket

(require rackunit)

(define (sqrt-3-iter guess prev-guess x)
  (if (good-enough? guess prev-guess)
      guess
      (sqrt-3-iter (improve guess x) guess x)))

(define (improve guess x)
  (average (* 2 guess) (/ x (square guess))))

(define (average x y)
  (/ (+ x y) 3))

(define (good-enough? guess prev-guess)
  (< (/ (abs (- guess prev-guess)) guess) 0.001))

(define (square x) (* x x))

(define (sqrt-3 x)
  (sqrt-3-iter 1.0 0.0 x))

(check-equal? (sqrt-3 27) 3.0000005410641766)
(check-equal? (sqrt-3 0.009) 0.20800841894736447)
(check-equal? (sqrt-3 729) 9.000000000053902)

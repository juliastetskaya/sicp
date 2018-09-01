#lang racket

(require rackunit)

(define (multiplication a b)
  (if (= b 0)
      0
      (+ a (multiplication a (- b 1)))))

(define (multiplication-second a b)
  (if (= b 0)
      0
      (if (even? b)
          (multiplication-second (double a) (halve b))
          (+ a (multiplication-second a (- b 1))))))

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

(check-equal? (multiplication 3 10) 30)
(check-equal? (multiplication-second 3 10) 30)
(check-equal? (multiplication-second 10 10) 100)
(check-equal? (multiplication-second 6 15) 90)

#lang racket

(require rackunit)

(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x) (= (remainder x 2) 0))

(define (multiplication-third a b)
  (multiplication-third-iter a b 0))

(define (multiplication-third-iter a counter result)
  (if (= counter 0)
      result
      (if (even? counter)
          (multiplication-third-iter (double a) (halve counter) result)
          (multiplication-third-iter a (- counter 1) (+ result a)))))

(check-equal? (multiplication-third 3 10) 30)
(check-equal? (multiplication-third 10 10) 100)
(check-equal? (multiplication-third 6 15) 90)
(check-equal? (multiplication-third 30 10) 300)

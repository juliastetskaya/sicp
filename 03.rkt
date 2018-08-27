#lang racket

(require rackunit)

(define (square x) (* x x))
(define (sum-of-squares a b) (+ (square a) (square b)))
(define (biggest a b) (if (> a b) a b))
(define (sum-of-three a b c) (sum-of-squares (biggest a b) (biggest b c)))


(check-equal? (sum-of-three 2 7 8) 113)
(check-equal? (sum-of-three 9 5 0) 106)
(check-equal? (sum-of-three 9 1 9) 162)
(check-equal? (sum-of-three 5 5 5) 50)
(check-equal? (sum-of-three 0 1 1) 2)

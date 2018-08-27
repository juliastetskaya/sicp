#lang racket

(require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b a) + -) a b))


(check-equal? (a-plus-abs-b 5 7) 12)
(check-equal? (a-plus-abs-b 5 -7) 12)
(check-equal? (a-plus-abs-b 5 0) 5)
(check-equal? (a-plus-abs-b -5 0) -5)

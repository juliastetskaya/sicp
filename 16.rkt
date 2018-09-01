#lang racket

(require rackunit)

(define (fast-expt-first b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt-first b (/ n 2))))
        (else (* b (fast-expt-first b (- n 1))))))

(define (square x) (* x x))
(define (even? n)
  (= (remainder n 2) 0))

(define (fast-expt b n)
  (fast-expt-iter b n 1))

(define (fast-expt-iter b counter result)
  (if (= counter 0)
      result
      (if (even? counter)
          (fast-expt-iter (square b) (/ counter 2) result)
          (fast-expt-iter b (- counter 1) (* result b)))))


(check-equal? (fast-expt-first 2 11) 2048)
(check-equal? (fast-expt 3 10) 59049)
(check-equal? (fast-expt 3 10) (fast-expt-first 3 10))

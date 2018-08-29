#lang racket

(require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)

(define (f n) (A 0 n))
(define (g n) (A 1 n)) 
(define (h n) (A 2 n)) 

(check-equal? (f 5) 10)
(check-equal? (g 4) 16)
(check-equal? (h 4) 65536)

(A 1 5)
(A 0 (A 1 4))
(A 0 (A 0 (A 1 3)))
(A 0 (A 0 (A 0 (A 1 2))))
(A 0 (A 0 (A 0 (A 0 (A 1 1)))))
(A 0 (A 0 (A 0 (A 0 2))))
(A 0 (A 0 (A 0 (* 2 2))))
(A 0 (A 0 (* 2 (* 2 2))))
(A 0 (* 2 (* 2 (* 2 2))))
(* 2 (* 2 (* 2 (* 2 2))))
2^5
32

(f n) -> 2n
(g n) -> 2^n, n>0
(h n) -> 2^2^n< n>0

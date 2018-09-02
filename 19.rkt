#lang racket

(require rackunit)

(define (fib n)
  (fib-iter 1 0 n))
(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(define (fast-fib n)
  (fast-fib-iter 1 0 0 1 n))

(define (square x) (* x x))

(define (fast-fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fast-fib-iter a
                        b
                        (+ (square p) (square q))
                        (+ (* 2 p q) (square q))
                        (/ count 2)))
        (else (fast-fib-iter (+ (* b q) (* a q) (* a p))
                             (+ (* b p) (* a q))
                             p
                             q
                             (- count 1)))))

(check-equal? (fib 9) 34)
(check-equal? (fast-fib 9) 34)
(check-equal? (fib 19) (fast-fib 19))

;a <- bq + aq + ap
;b <- bp + aq
;
;При двукратном применении трансформации Т получаем:
;a1 = (bp + aq)q + (bq + aq + ap)q + (bq + aq + ap)p
;b1 = (bp + aq)p + (bq + aq + ap)q
;
;a1 = bpq + aqq + bqq + aqq + apq + bpq + apq + app = 2bpq + 2aqq + bqq + 2apq + app
;b1 = bpp + 2apq + bqq + aqq
;
;a1 = b(2pq + qq) + a(2pq + qq) + a(qq + pp)
;b1 = b(pp + qq) + a(2pq + qq)
;
;p1 = qq + pp
;q1 = 2pq + qq

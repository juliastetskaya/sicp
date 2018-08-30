#lang racket

(require rackunit)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(check-equal? (sqrt 9) 3.00009155413138)
(check-equal? (square (sqrt 1000)) 1000.000369924366)
(check-equal? (new-if (= 5 2) 5 2) 2)
(check-equal? (new-if (> 5 2) 5 2) 5)

;При использовании new-if - сначала должны быть вычислены все аргументы,
;но третий аргумент (sqrt-iter (improve guess x) x) вызовет процедуру sqrt-iter повторно, 
;которая, в свою очередь, опять вызовет new-if и так до бесконечности, так как нет ограничивающего условия.

;При использовании if вычисляются не все аргументы. Сначала вычисляется предикат,
;а в зависимости от его значения - следствие или альтернатива, поэтому зацикливания не происходит.


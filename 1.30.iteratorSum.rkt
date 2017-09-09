#lang planet neil/sicp
(define (sum term a next b)
  (define (iter a result)
    (if (> a b )
        result
        (iter
         (next a )
         (+ result (term a))
        )))
    (iter a 0))

(define (next a)
  (+ a 1))

(define (sqr  x)
  (* x x))

(sum  sqr 1 next 2) 
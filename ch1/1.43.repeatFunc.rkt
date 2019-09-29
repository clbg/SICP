#lang planet neil/sicp
(define (compose f g)
  (lambda  (x ) ( f ( g x))))

(define  (repeat f n)
  ( if (= 1  n )  f
  (lambda (x ) ((compose  f  (repeat f (- n 1)))  x))))


((repeat inc 3) 5)
  

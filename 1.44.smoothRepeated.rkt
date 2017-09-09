#lang planet neil/sicp
;from previous code:
(define (compose f g)
  (lambda  (x ) ( f ( g x))))

(define  (repeat f n)
  ( if (= 1  n )  f
  (lambda (x ) ((compose  f  (repeat f (- n 1)))  x))))
;
(define dx 1)
(define (smooth  f )
   (lambda (x)  (/ (+ (f (- x dx))
                      (f x)
                      (f (+ x dx)))
                   3))
   )
(define (resmoothn f n)
  (lambda (x) (((repeat smooth n) f) x)))

;test:
(define ( sqr x)
  (* x x))
((resmoothn sqr 15) 5.0)

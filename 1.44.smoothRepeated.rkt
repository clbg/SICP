#lang planet neil/sicp
(define (compose f g)
  (lambda  (x ) ( f ( g x))))

(define  (repeat f n)
  ( if (= 1  n )  f
  (lambda (x ) ((compose  f  (repeat f (- n 1)))  x))))

(define dx 1)

(define (smooth  f )
   (lambda (x)  (/ (+ (f (- x dx))
                      (f x)
                      (f (+ x dx)))
                   3))
   )

(define (smooth-n f n)
  (repeat smooth n) f)

(define ( sqr x)
  (* x x))

((smooth-n sqr 1000) 10.0)
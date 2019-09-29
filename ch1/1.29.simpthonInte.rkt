#lang planet neil/sicp
(define ( sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (h a b n)
  (/ (- b a ) n))



(define  (  cube a)
  (* a a a ))

(define (addparts f a b n h)
  (define (next  x)
    (+ x h h))
  (+ (f a)
     (f b)
     (* 4 (sum f (+ a h)  next  b))
     (* 2 (sum f (+ a h h)  next (- b h)))))
  

(define (symp f a b n)
  (/  (* (h a b n) (addparts f a b n (h a b n))) 3))
  


(symp cube 0.0 1.0 1000)
#lang planet neil/sicp
(define (fixedPoint tolerance)
  (define  (good? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (f g)
    (+ 1
       (/ 1 g)))
  (define (try guess)
    (let ((next (f guess)))
      (if (good? guess next)
          next
          (try next))))
  (try 1.0))

(fixedPoint 0.000001)
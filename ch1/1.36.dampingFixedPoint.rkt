#lang planet neil/sicp
(define (fixedPointwithdamping tolerance)
  (define  (good? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (f g)
    (/ (log 10000)
       (log g)))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (/  (+ guess (f guess))2 )))
      (if (good? guess next)
          next
          (try next))))
  (try 3.0))



(define (fixedPointwithoutdamping tolerance)
  (define  (good? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (f g)
    (/ (log 10000)
       (log g)))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess )))
      (if (good? guess next)
          next
          (try next))))
  (try 3.0))


(fixedPointwithdamping  0.000001)
(newline)

(fixedPointwithoutdamping  0.000001)





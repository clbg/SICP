#lang planet neil/sicp
(define dx 0.00001)


(define tolerance 0.001)
(define (derive g)
  (lambda(x)
    (/ ( - ( g ( + x dx)) ( g x))
       dx)))

(define (fixedPoint f init )
  (define  (good? v1 v2)
    (< (abs (- v1 v2)) dx))
  (define (try guess)
    (let ((next (f guess)))
      (if (good? guess next)
          next
          (try next))))
  (try init))

;f(x) = x - g(x)/Dg(x)
(define( newtons-transform g)
  (lambda (x)
    ( - x (/ (g x) ((derive g) x)))))

(define (newtons-method g guess)
  (fixedPoint (newtons-transform g ) guess))

(define (findzero a b c )
  ( newtons-method (lambda(x)  (+
                                (* x x x)
                                (* a (* x x))
                                (* b (* x))
                                c)
                     )
                   0.333))

(findzero 1 1 0)
                                
                                
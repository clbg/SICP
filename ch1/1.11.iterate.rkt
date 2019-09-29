#lang planet neil/sicp
; SICP 1.11
(define (ff f1 f2 f3 t n)
  (cond ((= t n) f3)
        (else (ff f2 f3 (+ f3 
                           (* f2 2)
                           (* f1 3))
                  (+ t 1 )
                  n))))
(define (f n)
  (cond (( < n 3) n)
        (else ( ff 0 1 2 2 n))))

(f 3 )
(f 4 )
                           
         
         





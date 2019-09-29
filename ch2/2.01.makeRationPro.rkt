#lang planet neil/sicp

(define (make-rat n d)
  (cond  ( (< d 0)  (cons (- n ) ( - d) ))
         (else (cons n d ))))
                      
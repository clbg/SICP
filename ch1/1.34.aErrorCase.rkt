#lang planet neil/sicp

(define (f g)
  (g 2))

(define (sqr x)
  (* x x))

(f sqr)

(f f)
;error

; application: not a procedure;
; expected a procedure that can be applied to arguments
;  given: 2
;  arguments...:
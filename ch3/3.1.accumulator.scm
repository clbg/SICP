(define (make-accumulator v)
(lambda (a)  (begin (set! v (+ v a) ) v ))) 


(define A (make-accumulator 5))

(A 10)

(A 10)
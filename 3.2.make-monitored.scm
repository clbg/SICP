(define (make-monitored f)
    (let ((calls 0))
        (lambda (sym)  
                (cond   ((equal? sym 'how-many-calls?)   calls )
                        ((equal? sym 'reset-count)      (begin (set! calls  0 ) calls))
                        (else (begin (set! calls (+ 1 calls))
                                     (f sym)))
            ))))


(define (callme v) 'some-answer)

(define a (make-monitored callme))

(a 'how-many-calls?)

(a 1)
(a 1)
(a 1)
(a 'how-many-calls?)
(a 'reset-count)
(a 1)
(a 'how-many-calls?)
(a 1)
(a 1)
(a 'how-many-calls?)
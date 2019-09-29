(define (show x)
    (display x)
    x)

(define (streamer n)
    (if (= n 0)
        the-empty-stream
        (cons-stream n (streamer (- n 1))
    )))


(define (dis-stream s)
    (stream-for-each (lambda (x)  (begin (display x) (display "  ")))s))

(define x (stream-map show (streamer 10)))

(stream-ref x 3)
(stream-ref x 4)
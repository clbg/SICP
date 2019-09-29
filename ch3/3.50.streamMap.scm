(define (stream-map proc . argstreams)
    (if (null? (car argstreams))
        the-empty-stream
        (cons-stream
            (apply proc (map stream-car argstreams))
            (apply stream-map
                (cons proc (map stream-cdr argstreams))))))

; test stream-map
(define (streamer n)
    (if (= n 0)
        the-empty-stream
        (cons-stream n (streamer (- n 1))
    )))

(define (dis-stream s)
    (stream-for-each (lambda (x)  (begin (display x) (display "  ")))s))

(define test-stream (streamer 10))
(dis-stream test-stream)
(define ans-stream (stream-map + test-stream test-stream))
(dis-stream  ans-stream)

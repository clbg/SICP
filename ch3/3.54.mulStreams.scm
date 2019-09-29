(define (mul-streams  s1 s2)
    (stream-map * s1 s2))

(define (integers-from n)
    (cons-stream n (integers-from (+ 1 n ))))

(define integers (integers-from 1))
(define factorials
     (cons-stream 1(mul-streams factorials integers)))


(stream-ref integers 3)
(stream-ref factorials 1)
(stream-ref factorials 2)
(stream-ref factorials 3)
(stream-ref factorials 4)
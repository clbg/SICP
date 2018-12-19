(define (integers-from n)
    (cons-stream n (integers-from (+ 1 n ))))

(define integers (integers-from 1))


(define ss
    (cons-stream(car integers) (stream-map + ss (stream-cdr integers))))


(stream-ref ss 1)
(stream-ref ss 2)
(stream-ref ss 3)
(stream-ref ss 4)
(stream-ref ss 5)
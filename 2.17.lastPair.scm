(define (last-pair l)
  (if (null? (cdr l))
    (car l)
    (last-pair (cdr l))))


(last-pair (list 2 3 4 333))

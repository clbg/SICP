(define (fringe  l)
  (define (ff l ans)
    (if (null?   l)
	ans
	(if (list? (car l))
	    (ff (cdr l) (append ans  (fringe (car l))))
	    (ff (cdr l) (append ans (list (car l)))))))
    (ff l (list )))




(define x (list (list 1 2) (list 3 4)))

(fringe (list x  x))


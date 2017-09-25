(define (deeprever lis)
  (define (reversl  bef aft)
    (if(null? (cdr bef))
      (if(list? (car bef))
	(cons (deeprever (car bef)) aft)
	(cons (car bef) aft))
      (if(list? (car bef))
	(reversl (cdr bef) (cons (deeprever (car bef)) aft))
	(reversl (cdr bef) (cons (car bef) aft)))))
  (reversl lis (list )))





(deeprever (list (list 1 2 ) (list 4  6) ))

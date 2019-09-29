(define (rever lis)
  (define (reversl  bef aft)
    (if(null? (cdr bef))
      (cons (car bef) aft)
      (reversl (cdr bef) (cons (car bef) aft))))
  (reversl lis (list )))


(rever (list 1 2 3))

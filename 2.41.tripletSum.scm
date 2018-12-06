(load "2.40.unique-pairs.scm") 

(define (triplet  n )
    (flatmap (lambda (i)
            (flatmap (lambda (j ) (map (lambda (k) (list i j k ))  (enumerate-interval 1 (- j 1 )) ) ) (enumerate-interval 1 (- i 1) )   ))
    (enumerate-interval 1  n)))


(define (sum?  l s)
    (= s (+  (car l)
        (cadr l)
        (caddr l )))
)


(define (tripletSum n s )
    (filter (lambda (l) (sum? l s) ) (triplet n)))

(tripletSum 4 6)
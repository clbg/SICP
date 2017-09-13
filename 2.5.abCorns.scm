(define logB 
    (lambda (B x) 
      (/ (log x) (log B))))

(define (cons-ab  x  y)
  (* (expt 2 x)
     (expt 3 y)))

(define (car-ab c)
  (if ( = 0 (remainder  c 3) ) (car-ab (/ c 3))
    ( (logB 2 c ))
    ))

(define (cdr-ab c)
  (if ( = 0 (remainder c 2)) (cdr-ab ( / c 2))
	  ((logB 3 c))
    ))

;(car-ab 2)
(car-ab (cons-ab  8 8 ))

(cdr-ab (cons-ab 8 9))





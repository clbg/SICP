 (define (same-parity1 first . rest) 
   (define (same-parity-iter source dist remainder-val) 
     (if (null? source) 
         dist 
         (same-parity-iter (cdr source) 
                           (if (= (remainder (car source) 2) remainder-val) 
                               (append dist (list (car source))) 
                               dist) 
                           remainder-val))) 
    
   (same-parity-iter rest (list first) (remainder first 2)))

(same-parity1 2 3 4 5 6 )

(define (same-parity . arg)
  (define parity (remainder (car arg) 2))
  (define (iter in out)
    (null?  in )
    (out)
    (if (=
	    (remainder (+ parity (car in)) 2)
	    0)
	  (iter (cdr in) (append out (car in)))
	  (iter (cdr in) out)))
  (iter arg '() ))

(same-parity 1 2 3 4 5 6 )


;! attention ! 
;return  : 888
(append '() 888)
;return  : (888)
(list 888)

(define (make-mobile left right)
  (list left right))

(define (make-branch lengt structure)
  (list lengt structure))

;a
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-lengt bran)
  (car bran))

(define (branch-structure bran)
  (cadr bran))


;b total-weight
(define (left-mobile? mobile)
  (list? (cadar mobile)))

(define (left-mobile mobile)
  (cadar mobile))

(define (right-mobile? mobile)
  (list? (cadadr mobile)))

(define (right-mobile mobile)
  (cadadr mobile))


(define demo-mobile 
  (make-mobile  (make-branch 3 4) 
		(make-branch 5 (make-mobile 
				 (make-branch 1 2)
				 (make-branch 1 3)))))



(left-mobile? demo-mobile)
(right-mobile? demo-mobile)


(define (total-weight  mobile)
  (+ (if (left-mobile? mobile )
       (total-weight (left-mobile mobile))
       (cadar mobile))

     (if (right-mobile? mobile)
       (total-weight (right-mobile mobile))
       (cadadr mobile))))


(total-weight demo-mobile)
;(total-weight (make-mobile (make-mobile 11 22 ) (make-mobile 2 2)))

;c banlance?

(define (balance? mobile)
  (= 
    ;if left -mobile ^^^^^^^^ any way it's easy
    
    
    (* caar (total-weight (left-mobile mobile)))
    (* caadr (total-weight (right-mobile mobile)))))

(balance? demo-mobile)




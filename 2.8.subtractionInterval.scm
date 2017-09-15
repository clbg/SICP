(load "2.7.intervalConstructor.scm")


(define (sub-interval a b)
  (make-interval ((upper-bound a) - (lower-bound b))
	((lower-bound a) - (upper-bound b))))



(sub-inteval  make-interval( 22 33) make-interval( 44 55))


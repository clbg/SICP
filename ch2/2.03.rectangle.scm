(load "/Users/megvii/Desktop/SICP/2.2.segment.scm")



(define sg
  (make-segment (make-point 1 1)
                (make-point 1 2))
    )


(define (make-rect p1 p2 p3 p4)
  (cons (cons p1 p2)
	(cons p3 p4)))





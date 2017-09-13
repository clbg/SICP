;lang planet neil/sicp

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-point x y)
  (cons x y)
  )
(define (x-point p)
  (car p)
  )
(define (y-point p)
  (cdr p)
  )

(define (make-segment start end)
  (cons start end)
  )
(define (start-segment segment)
  (car segment)
  )
(define (end-segment segment)
  (cdr segment)
  )
(define sg
(make-segment (make-point 1 1)
              (make-point 1 2))
  )

(print-point (start-segment sg))
(print-point (end-segment sg))

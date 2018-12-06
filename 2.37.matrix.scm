(load "2.36.accumulate-n.scm")

;vars 
(define m (list (list 1 2 3 4)  ( list 4 5 6 6) (list 6 7 8 9 )))
(define v (list 1 2 3 4))


;functions
(define (dot-product v w)
    (accumulate + 0 (map * v w )))

(dot-product v v )


(define (matrix-*-vector m v )
    (map (lambda (row) (dot-product row v)) m))

(matrix-*-vector m  v)


(define (matrix-*-matrix m n )
    (map (lambda ( col ) (matrix-*-vector m col) ) n )
)

(matrix-*-matrix m m )


(define (transpose m )
    (accumulate-n cons `() m))

(transpose m)
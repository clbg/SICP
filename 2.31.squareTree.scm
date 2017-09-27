(define (square x)
  (* x x))


(define (tree-map f  t)
  ( map( lambda (tree)
		(if (pair? tree)
		  (square-tree tree)
		  (f tree)))
    t))


(define (square-tree tree)
  (tree-map square tree))

(square-tree 
  (list 1
	(list 2 (list 3 4) 5)
	(list 6 7)))

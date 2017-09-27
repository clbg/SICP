(define (square-tree t)
  ( map( lambda (tree)
		(if (pair? tree)
		  (square-tree tree)
		  (* tree tree)))
    t))


(square-tree 
  (list 1
	(list 2 (list 3 4) 5)
	(list 6 7)))

(define (  myfor-each f  lis)
  (if (not (null? lis))
    ( begin (f (car lis))
     (myfor-each  f ( cdr lis)))))

(myfor-each (lambda (x) (display x)) (list  2 3 4))
;因为 cond 形式支持多条表达式，因此可以直接将两个表达式都放进 cond 形式之内(实际上， cond 的形式体内有一个隐式的 begin ）。
;特殊形式 begin 可以确保多条表达式按顺序求值，它可以将多条表达式当作一条表达式来运行，因此可以用在只支持单条表达式的 if 形式里。


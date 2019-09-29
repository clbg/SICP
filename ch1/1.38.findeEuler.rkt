#lang planet neil/sicp

(define (n i) 1)



(define (d i )
  (cond ( (= 0 (modulo  (+ 1 i) 3))
          (* 2 (/ (+ i 1) 3))
          )
        ( else 1)))

(define  (cf n d i res k)
  (cond ((= i 0) res)
        ( (> i 0) (cf n d (- i 1)
                      (/ (n i)
                       (+ res (d i)))
                      k)
                  )))

(define (cont-frac n d k)
  (cf n d k  0.0 k))


(cont-frac n d 10000)

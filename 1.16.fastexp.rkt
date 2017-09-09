#lang planet neil/sicp

;SICP 1.16
(define (ff a base n)
  (cond ((= 0 n) a )
        ((= 0 (/ n 2))
            (ff a (* base base) (/ n 2)))
        (else (ff (* a base ) base  (- n 1)))))


(define (fastexp base n)
  (if (= n 0)
      1
      (ff 1 base n)))
#lang planet neil/sicp
;randomly select recursive approach to solve it
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      0
      (combiner (+ null-value (term a))
                (accumulate combiner null-value term  (next a) next b))))

(accumulate +
            0
            (lambda (x ) (* x x))
            1
            inc
            3)
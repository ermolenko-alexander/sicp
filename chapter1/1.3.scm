#lang sicp

(define (sum_squares x y)
  (+ (* x x) (* y y)))

(define (sum_max_squares x y z)
  (cond ((and (>= x y) (>= x z)) (cond ((>= y z) (sum_squares x y))
                                      (else (sum_squares x z))))
        ((and (>= y x) (>= y z)) (cond ((>= x z) (sum_squares y x))
                                      (else (sum_squares y z))))
        ((and (>= z x) (>= z y)) (cond ((>= x y) (sum_squares z x))
                                      (else (sum_squares z y)))))
)
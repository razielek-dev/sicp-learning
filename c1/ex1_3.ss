#lang racket

(define (sum_squares a b) (+ (* a a) (* b b)))

(define (sum_of_squares_of_largest_two a b c)
  (cond ((and (<= a b) (<= a c)) (sum_squares b c))
        ((and (<= b a) (<= b c)) (sum_squares a c))
        ((and (<= c a) (<= c b)) (sum_squares a b))
        (else (sum_squares a b))))

(= (sum_of_squares_of_largest_two 0 0 0) 0)
(= (sum_of_squares_of_largest_two 0 1 2) 5)
(= (sum_of_squares_of_largest_two 1 1 0) 2)
(= (sum_of_squares_of_largest_two 1 3 2) 13)
(= (sum_of_squares_of_largest_two 1 1 2) 5)
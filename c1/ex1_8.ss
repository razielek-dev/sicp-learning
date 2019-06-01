#lang scheme

(define (cube-root x)
  (define (improve guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
  (define (good-enough? guess)
    (< (abs (- x (* guess guess guess))) 0.000001))
  (define (cube-root-iter guess)
    (if (good-enough? guess)
        guess
        (cube-root-iter (improve guess))))
  (cube-root-iter 1.0))

(cube-root 1)
(cube-root 8)
(cube-root 27)
(cube-root 64)
(cube-root 125)
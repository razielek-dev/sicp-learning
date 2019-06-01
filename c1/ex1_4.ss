#lang scheme

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; for b > 0 body => (+ a b)    ex. (a = 3, b = 2) => 5
; for b <= 0 body => (- a b)   ex. (a = 3, b = -2) => 5    (we always add the absolute value of b)
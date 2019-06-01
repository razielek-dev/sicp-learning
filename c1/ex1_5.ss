#lang scheme

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;(test 0 (p)) commented out because of infinite recursion

; In applicative-order evaluation we fall into an infinite recursion,
; because we are eagerly evaluating the predicate (p) which is a infinite recursive function

; In normal-order evaluation, the substitution would lead to a following form,
; which doesn't call (p) function because it's value is not needed.
(if (= 0 0)
    0
    (p))
#lang scheme

(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (add a b)
  (if (= a 0) b (inc (add (dec a) b))))


; (add 4 5)
; (inc (add 3 5))
; (inc (inc (add 2 5)))
; (inc (inc (inc (add 1 5))))
; (inc (inc (inc (inc (add 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
; First function describes a recursive process

(define (plus a b)
  (if (= a 0) b (plus (dec a) (inc b))))

; (plus 4 5)
; (plus 3 6)
; (plus 2 7)
; (plus 1 8)
; (plus 0 9)
; 9
; Secund function describes an iterative process

(add 4 5)

(plus 4 5)
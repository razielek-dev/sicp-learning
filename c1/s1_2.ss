#lang scheme

; linear recursion
(define (factorial-lr n)
  (if (= n 1)
      1
      (* n (factorial-lr (- n 1)))))


; linear iteration
(define (factorial-li n)
  (define (fact-iter product counter)
    (if (> counter n)
        product
        (fact-iter (* product counter)
                   (+ counter 1))))
  (fact-iter 1 1))


(factorial-lr 6)
(factorial-li 6)
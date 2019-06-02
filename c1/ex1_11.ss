#lang scheme

; recursive process
(define (fr n)
  (if (< n 3)
      n
      (+ (fr (- n 1))
         (* 2 (fr (- n 2)))
         (* 3 (fr (- n 3))))))

; iterative process
(define (fl n)
  (define (fl-iter n-3 n-2 n-1 counter)
    (define res (+ n-1 (* 2 n-2) (* 3 n-3)))
    (if (>= counter n)
        res
        (fl-iter n-2 n-1 res (+ counter 1))))
  (if (< n 3)
      n
      (fl-iter 0 1 2 3)))


; testing
(define (test n)
  (define (test-iter i)
    (define fli (fl i))
    (define fri (fr i))
    (display (string-append "for i: " (number->string i) ", fl: " (number->string fli) ", fr: " (number->string fri)))
    (newline)
    (if (> i n)
        (= fri fli)
        (test-iter (+ i 1))))
  (test-iter 1))
(test 25)

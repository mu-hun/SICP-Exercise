#lang racket/base

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess next-guess)
  (< (abs (/ (- next-guess guess) next-guess)) 0.00000000001))

(define (sqrt-iter guess x)
  (let ((next-guess (improve guess x)))
    (if (good-enough? guess next-guess)
      guess
      (sqrt-iter next-guess x))))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(provide sqrt)

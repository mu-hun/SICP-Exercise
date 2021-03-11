#lang racket/base

(require "utils.rkt")

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess next-guess)
  (< (abs (/ (- next-guess guess) next-guess)) 0.00000000001))

(define (cube-root-iter guess x)
  (let ((next-guess (improve guess x)))
    (if (good-enough? guess next-guess)
      guess
      (cube-root-iter next-guess x))))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(provide cube-root)

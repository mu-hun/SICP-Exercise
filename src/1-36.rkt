#lang racket/base

(require "fixed-point.rkt")

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 
       tolerance))
  (define (try guess)
    (display guess) (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(display (fixed-point (average-damp (lambda (x) (/ (log 1000) (log x)))) 2)) (newline)
(display (fixed-point (average-damp (lambda (x) (/ (log 1000) (log x)))) 2))

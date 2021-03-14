#lang racket/base

(require rackunit)
(require "fixed-point.rkt" "utils.rkt")

(test-case "Compute golden ratio by means of the fixed-point procedure."
  (let ((golden-ratio (fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)))
    (check-equal? golden-ratio 1.6180327868852458)))

(test-case "Compute cube-root by fixed-point procedure."
  (define (cube-root x) (fixed-point (average-damp (lambda (y) (/ x (square y)))) 1.0))

  (check-equal? (floor (cube-root 16)) 2.0)
  (check-equal? (floor (cube-root 27)) 3.0))

#lang racket/base

(require rackunit "1-30.rkt")
(require "utils.rkt")

(test-case "sum a to b"
  (define (sum-integers a b)
    (sum identity a inc b))

  (check-equal? (sum-integers 1 10) 55 "sum 1 to 10"))

(test-case "cube a to b"
  (define (sum-cubes a b)
  (sum cube a inc b))

  (check-equal? (sum-cubes 1 2) 9 "sum each cube 1 to 2"))

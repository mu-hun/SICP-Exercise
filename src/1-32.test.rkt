#lang racket/base

(require rackunit rackunit/text-ui)
(require "1-32.rkt" "utils.rkt")

(run-tests
  (test-suite "sum with accmulate procedure"
    (test-case "sum a to b"
      (define (sum-integers a b)
        (sum identity a inc b))

      (check-equal? (sum-integers 1 10) 55 "sum 1 to 10"))

    (test-case "cube a to b"
      (define (sum-cubes a b)
      (sum cube a inc b))

      (check-equal? (sum-cubes 1 2) 9 "sum each cube 1 to 2"))))

(run-tests
  (test-suite "product with accmulate procedure"
    (test-case "Show how to define factorial in terms of product."
      (define (factorial n)
      (product identity 1 inc n))

      (check-equal? (factorial 1) 1)
      (check-equal? (factorial 2) 2)
      (check-equal? (factorial 3) 6)
      (check-equal? (factorial 10) 3628800))))

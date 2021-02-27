#lang racket/base

(require rackunit "1-31.rkt")
(require "utils.rkt")

(test-case "Show how to define factorial in terms of product."
  (define (factorial n)
  (product-iter identity 1 inc n))

  (check-equal? (factorial 1) 1)
  (check-equal? (factorial 2) 2)
  (check-equal? (factorial 3) 6)
  (check-equal? (factorial 10) 3628800)
)

; TODO: Also use product to compute approximations to π using the formula

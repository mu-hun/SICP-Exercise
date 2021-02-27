#lang racket/base

(require math/number-theory)

(require rackunit rackunit/text-ui)
(require "1-33.rkt" "utils.rkt")

(test-case "The sum of the squares of the prime numbers in the interval a to b"
  (define (sum-evens a b)
    (filtered-accumulate + 0 square a inc b prime?))
    
    (check-equal? (sum-evens 1 2) 4)
    (check-equal? (sum-evens 1 3) 13))

(test-case "The product of all the positive integers less than n that are relatively prime to n"
  (define (product-prime n)
    (define (predicate x) (equal? 1 (gcd n x)))
    (filtered-accumulate * 1 identity 1 inc (- n 1) predicate))

    (check-equal? (product-prime 3) 2)
    (check-equal? (product-prime 4) 3)
    (check-equal? (product-prime 5) 24)
    (check-equal? (product-prime 6) 5))

#lang racket/base

(require rackunit "2-19.rkt")

(define us-coins (list 50 25 10 5 1))

(test-case "Define the procedures first-denomination, except-first-denomination and no-more? in terms of primitive operations on list structures."
  (check-equal? (cc 100 us-coins) 292))

(test-case "Does the order of the list coin-values affect the answer produced by cc? Why or why not?"
    (check-equal?
      (cc 100 us-coins)
      (cc 100 (reverse us-coins)) "No affect to answer. Because all combinations are searched equally. so any order would do as well."))

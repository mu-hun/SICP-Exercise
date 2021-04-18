#lang racket/base

(require rackunit "2-17.rkt")

(test-case "Define a procedure last-pair that returns the list that contains only the last element of a given (nonempty) list:"
  (check-equal? (last-pair (list 23 72 149 34)) '(34)))

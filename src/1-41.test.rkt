#lang racket/base

(require rackunit)
(require "1-41.rkt" "utils.rkt")

(test-case "Define a procedure double that takes a procedure of one argument as argument and returns a procedure that applies the original procedure twice."

  (define sqrt-cube (double sqrt))

  (check-equal? (sqrt-cube 16) 2)
  (check-equal? (((double (double double)) inc) 5) 21)
)

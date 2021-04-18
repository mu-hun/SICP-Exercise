#lang racket/base

(require rackunit "2-20.rkt")

(test-case "write a procedure same-parity that takes one or more integers and returns a list of all the arguments that have the same even-odd parity as the first argument."
  (check-equal? (same-parity 1 2 3 4 5 6 7) '(1 3 5 7))
  (check-equal? (same-parity 2 3 4 5 6 7) '(2 4 6)))

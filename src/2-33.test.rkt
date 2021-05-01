#lang racket/base

(require rackunit)
(require "utils.rkt" "2-33.rkt")

(test-case "map"
  (check-equal? (map inc (list 1 2)) (list 2 3)))

(test-case "append"
  (check-equal? (append (list 1 2 3) (list 4 5 6)) (list 1 2 3 4 5 6)))

(test-case "length"
  (check-equal? (length '(1 2)) 2))

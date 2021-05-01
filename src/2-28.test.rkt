#lang racket/base

(require rackunit)
(require "2-28.rkt")

(test-case "Write a procedure fringe that takes as argument a tree (represented as a list) and returns a list whose elements are all the leaves of the tree arranged in left-to-right order."
  (define x (list (list 1 2) (list 3 4)))
  (check-equal? (fringe x) '(1 2 3 4))
  (check-equal? (fringe (list x x)) '(1 2 3 4 1 2 3 4)))

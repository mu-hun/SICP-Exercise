#lang racket/base

(require rackunit)
(require "2-30.rkt")

(test-case "Define a procedure square-tree analogous to the square-list procedure of Exercise 2.21. That is, square-tree should behave as follows: "
  (define tree (list 1
                  (list 2 (list 3 4) 5)
                  (list 6 7)))
  (define expect-value '(1 (4 (9 16) 25) (36 49)))
  
  (check-equal?
    (square-tree tree)
    expect-value
    "without using any higher-order procedures")
  (check-equal?
    (square-tree-map tree)
    expect-value
    "using map and recursion."))

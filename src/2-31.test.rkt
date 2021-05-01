#lang racket/base

(require rackunit)
(require "utils.rkt" "2-31.rkt")

(test-case "Abstract your answer to Exercise 2.30 to produce a procedure tree-map with the property that square-tree could be defined as "
  (define (square-tree tree)
    (tree-map square tree))

  (check-equal? (square-tree
                  (list 1
                       (list 2 (list 3 4) 5)
                       (list 6 7)))
                       '(1 (4 (9 16) 25) (36 49))))

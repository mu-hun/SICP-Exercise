#lang racket/base

(define (tree-map factor tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (tree-map factor sub-tree)
             (factor sub-tree)))
       tree))

(provide tree-map)

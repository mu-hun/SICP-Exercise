#lang racket/base

(require rackunit)
(require "1-42.rkt" "utils.rkt")

(test-case "Define a procedure compose that implements composition."
  (check-equal? ((compose square inc) 6) 49) 
)

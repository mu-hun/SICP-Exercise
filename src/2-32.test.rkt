#lang racket/base

(require rackunit "2-32.rkt")

(test-case "Complete the following definition of a procedure that generates the set of subsets of a set and give a clear explanation of why it works: "
  (check-equal? (subsets '(1 2 3)) '(() (3) (2) (2 3) (1) (1 3) (1 2) (1 2 3))))

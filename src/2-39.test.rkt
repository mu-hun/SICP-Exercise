#lang racket/base

(require rackunit "2-38.rkt")

(run-test
  (test-suite "Complete the following definitions of reverse (Exercise 2.18) in terms of fold-right and fold-left from Exercise 2.38:"
    (test-case "fold-right"
      (define (reverse sequence)
        (fold-right 
        (lambda (item folding) (append folding (list item))) null sequence))
      (check-equal? (reverse (list 1 4 9 16 25)) '(25 16 9 4 1)))
      
    (test-case "fold-left"
      (define (reverse sequence)
        (fold-left
        cons null sequence))
      (check-equal? (reverse (list 1 4 9 16 25)) '(25 16 9 4 1)))))

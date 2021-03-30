#lang racket/base

(require rackunit)
(require "2-4.rkt")

(test-case "verify that (car (cons x y)) yields x for any objects x and y. (Hint: To verify that this works, make use of the substitution model of 1.1.5)"
  (let ((x 1)
        (y 2))
    (define pair (cons x y))
    (check-equal? (car pair) x "equal to x")
    (check-equal? (cdr pair) y "equal to y")))

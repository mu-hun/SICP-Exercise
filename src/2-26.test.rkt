#lang racket/base

(require rackunit)

(define x (list 1 2 3))
(define y (list 4 5 6))

(test-case "What result is printed by the interpreter in response to evaluating each of the following expressions: "

  (check-equal? (append x y) '(1 2 3 4 5 6))
  (check-equal? (cons x y) '((1 2 3) 4 5 6))
  (check-equal? (list x y) '((1 2 3) (4 5 6))))

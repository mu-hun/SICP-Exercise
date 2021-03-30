#lang racket/base

(require rackunit rackunit/text-ui)
(require "2-5.rkt")

(run-test
  (test-suite "Show that we can represent pairs of nonnegative integers using only numbers and arithmetic operations if we represent the pair a and b as the integer that is the product 2 a 3 b."
    (test-case "Give the corresponding  definitions of the procedures cons, car, and cdr."
    (let ((x 4)
          (y 5))
      (define calculated (cons x y))
      (check-equal? (car calculated) x)
      (check-equal? (cdr calculated ) y)))))

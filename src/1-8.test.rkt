#lang racket/base

(require rackunit)
(require "1-8.rkt")

(test-case "Implement a cube-root procedure analogous to the square-root procedure."

  (check-equal? (floor (cube-root 16)) 2.0)
  (check-equal? (floor (cube-root 27)) 3.0)
)

#lang racket/base

(require rackunit)
(require "utils.rkt" "fixed-point.rkt")

(test-case "We can use sqrt just as we can use any procedure."
  (define (sqrt x)
    (fixed-point 
    (lambda (y) (average y (/ x y)))
    1.0))
  
  (check-equal? (sqrt 9) 3.0)
  (check-equal? (sqrt (+ 100 37)) 11.704699910719626)
)


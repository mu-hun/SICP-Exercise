#lang racket/base

(require rackunit)
(require "1-7.rkt" "utils.rkt")


(test-case "We can use sqrt just as we can use any procedure."

  (check-equal? (sqrt 9) 3.0)
  (check-equal? (sqrt (+ 100 37)) 11.704699910719626)
)

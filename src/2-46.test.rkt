#lang racket/base

(require rackunit rackunit/text-ui)
(require rackunit "2-46.rkt")

(define v2-3 (make-vect 2 3)) 
(define v5-8 (make-vect 5 8))

(run-tests (test-suite "A two-dimensional vector v running from the origin to a point can be represented as a pair consisting of an x -coordinate and a y -coordinate. Implement a data abstraction for vectors by giving a constructor make-vect and corresponding selectors xcor-vect and ycor-vect. In terms of your selectors and constructor, implement procedures add-vect, sub-vect, and scale-vect that perform the operations vector addition, vector subtraction, and multiplying a vector by a scalar:"
                       
                       (test-case "selector"
                                  (let ((vect (make-vect 3 4)))
                                    (check-equal? (xcor-vect vect) 3)
                                    (check-equal? (ycor-vect vect) 4)))
                       
                       (test-case "add and subtract vector"
                                  (check-equal? (make-vect 7 11) (add-vect v5-8 v2-3))
                                  (check-equal? (make-vect 3 5) (sub-vect v5-8 v2-3)))
                       
                       (test-case "scale vector"
                                  (check-equal? (make-vect 10 16) (scale-vect 2 v5-8)))))


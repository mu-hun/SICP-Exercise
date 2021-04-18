#lang racket/base

(require rackunit rackunit/text-ui)
(require "2-27.rkt")

(run-test
  (test-suite "Modify your reverse procedure of Exercise 2.18 to produce a deep-reverse procedure that takes a list as argument and returns as its value the list with its elements reversed and with all sublists deep-reversed as well."
    (test-case "2-depth list"
      (let ((x (list (list 1 2) (list 3 4))))
        (check-equal? (deep-reverse x) '((4 3) (2 1)) "2-depth list")))
    
    (test-case "3-depth list"
      (let ((x (list (list 1 2 (list 3 4)) (list 4 5))))
        (check-equal? (deep-reverse x) '((5 4) ((4 3) 2 1)) "3-depth list")))))

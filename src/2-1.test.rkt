#lang racket/base

(require rackunit rackunit/text-ui)
(require "2-1.rkt")

(run-tests
  (test-suite "Define a better version of make-rat that handles both positive and negative arguments."
    (test-case "if the rational number is positive, both the numerator and denominator are positive."
      (let ((target (make-rat 1 2)))
        (check-equal? (numer target) 1)
        (check-equal? (denom target) 2)))
    
    (test-case "if the rational number is positive, both the numerator and denominator are negative."
      (let ((target (make-rat -1 -2)))
        (check-equal? (numer target) 1)
        (check-equal? (denom target) 2)))
    
    (test-case "if the rational number is negative, only the numerator is negative."
      (let ((target (make-rat -1 2)))
        (check-equal? (numer target) -1)
        (check-equal? (denom target) 2))

      (let ((target (make-rat 1 -2)))
        (check-equal? (numer target) -1)
        (check-equal? (denom target) 2)))))

#lang racket/base

(define (make-accumulator initial)
  (lambda (add-value)
    (begin (set! initial (+ add-value initial))
           initial)))

(provide make-accumulator)

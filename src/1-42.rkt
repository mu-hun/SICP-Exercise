#lang racket/base

(define (compose a b)
  (lambda (x)
    (a (b x))))

(provide compose)

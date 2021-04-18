#lang racket/base

(define (last-pair sequence)
  (define (iter sequence)
    (if (null? (cdr sequence))
      (list (car sequence))
      (iter (cdr sequence))))
  (iter (cdr sequence)))

(provide last-pair)

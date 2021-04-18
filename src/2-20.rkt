#lang racket/base

(and #t #f)

(define (same-parity . x)
  (let ((predicate
    (if (even? (car x))
      even?
      odd?)))
    (filter predicate x)))

(provide same-parity)


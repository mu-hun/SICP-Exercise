#lang racket/base

(define (filtered-accumulate
 combiner null-value term a next b predicate)
  (define (iter reducing value)
  (if (> value b)
    reducing
    (iter (combiner reducing
      (if (predicate value) (term value) null-value))
        (next value))))
  (iter null-value a))

(provide filtered-accumulate)

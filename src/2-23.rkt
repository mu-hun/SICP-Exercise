#lang racket/base

(define (for-each predicate sequence)
  (define (iter sub-sequence temp)
    (if (null? sub-sequence)
      '()
      (iter (cdr sub-sequence) (predicate (car sub-sequence)))))
  (iter sequence '()))

(for-each (lambda (x) (newline) (display x)) (list 1 2))

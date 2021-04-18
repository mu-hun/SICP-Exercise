#lang racket/base

(define (reverse sequence)
  (define (iter sequence reducing)
    (if (null? sequence)
      reducing
      (iter (cdr sequence) (cons (car sequence) reducing))))
  (iter sequence '()))

(provide reverse)

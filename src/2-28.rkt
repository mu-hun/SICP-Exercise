#lang racket/base

(define (fringe sequence)
  (cond ((null? sequence) null)
    ((not (pair? sequence)) (list sequence))
    (else (append (fringe (car sequence)) (fringe (cdr sequence))))))

(provide fringe)

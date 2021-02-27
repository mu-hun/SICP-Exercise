#lang racket/base

(define (accumulate 
 combiner null-value term a next b)
 (define (iter reducing value)
  (if (> value b)
    reducing
    (iter (combiner reducing (term value)) (next value))))
 (iter null-value a))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(provide sum product)

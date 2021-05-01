#lang racket/base

(require "utils.rkt")

(define (map p sequence)
  (accumulate
    (lambda (x y)
      (cons (p x) y)) null sequence))

(define (append seql seq2)
  (accumulate cons seq2 seql))

(define (length sequence)
  (accumulate (lambda (x y) (+ x 1)) 0 sequence))

(provide map append length)

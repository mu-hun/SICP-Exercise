#lang racket/base

(require "2-18.rkt")

(define (sub-reverse item)
  (if (list? item)
    (deep-reverse item)
    item))

(define (deep-reverse sequence)
  (if (list? sequence)
    (reverse (map sub-reverse sequence))
    (sequence)))

(provide deep-reverse)

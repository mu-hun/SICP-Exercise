#lang racket/base

(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (get-exp x n)
  (define (iter x count)
    (if (= 0 (remainder x n))
      (iter (/ x n) (+ count 1))
      count))
    (iter x 0))

(define (car x) (get-exp x 2))
(define (cdr x) (get-exp x 3))

(provide cons car cdr)

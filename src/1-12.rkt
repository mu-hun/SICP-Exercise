#lang racket/base

(define (pascal row col)
  (cond ((= row 1) 1)
    ((or (= col 1) (= col row)) 1)
    (else (+ (pascal (- row 1)  (- col 1))
      (pascal (- row 1) col)))))

(provide pascal)

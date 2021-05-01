#lang racket/base

(define (subsets s)
  (if (null? s)
      (list null)
      ; subset excluding first element
      (let ((rest (subsets (cdr s))))
        (append
        ; subset including first element
        rest (map (lambda (item) (cons (car s) item)) rest)))))

(provide subsets)

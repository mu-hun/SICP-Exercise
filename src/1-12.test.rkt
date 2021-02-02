#lang racket/base

(require rackunit)
(require "1-12.rkt" "utils.rkt")

(test-case "Test pascal each item"
	(check-equal? (pascal 1 0) 1)
	(check-equal? (pascal 2 1) 1)
	(check-equal? (pascal 2 2) 1)
	(check-equal? (pascal 3 2) 2))

(test-case "Test pascal each row"
  (define (pascal-row n)
    (map (lambda (i)
      (pascal n i))
        (range 1 (+ n 1))))

  (check-equal? (pascal-row 1) `(1))
  (check-equal? (pascal-row 2) `(1 1))
  (check-equal? (pascal-row 3) `(1 2 1))
  (check-equal? (pascal-row 4) `(1 3 3 1))
  (check-equal? (pascal-row 5) `(1 4 6 4 1))
)

#lang racket/base

(require rackunit "2-38.rkt")

(test-case "What are the values of "
  (check-equal? (fold-right / 1 (list 1 2 3))
    (/ 1 
      (/ 2 
        (/ 3 1)))) ; start from this line.
  (check-equal? (fold-left  / 1 (list 1 2 3))
    (/ 3
      (/ 2
        (/ 1 1))))
  (check-equal? (fold-right list null (list 1 2 3))
    (list 1
      (list 2
        (list 3 null))))
  (check-equal? (fold-left list null (list 1 2 3))
    (list 3
      (list 2
        (list 1 null)))))

; TODO: find answer "Give a property that op should satisfy to guarantee that fold-right and fold-left will produce the same values for any sequence."

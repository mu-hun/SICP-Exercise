#lang racket/base

(require rackunit "utils.rkt")

(test-case "Redefine count-leaves from 2.2.2 as an accumulation: "
  (define (count-leaves t)
    (accumulate + 0 (map
      (lambda (x)
        (if (pair? x) (count-leaves x) 1)) t)))
  
  (check-equal? (count-leaves (list 1
                                (list 2 (list 3 4) 5)
                                (list 6 7))) 7))

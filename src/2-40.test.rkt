#lang racket/base

(require rackunit "2-40.rkt")

(test-case "Define a procedure unique-pairs that, given an integer n , generates the sequence of pairs ( i , j ) with 1 ≤ j < i ≤ n ."
           (check-equal? (unique-pairs 1) '())
           (check-equal? (unique-pairs 2) '((2 1)))
           (check-equal? (unique-pairs 3) '((2 1) (3 1) (3 2))))

(test-case "Use unique-pairs to simplify the definition of prime-sum-pairs given above."
           (check-equal? (prime-sum-pairs 6) '((2 1 3) (3 2 5) (4 1 5) (4 3 7) (5 2 7) (6 1 7) (6 5 11))))

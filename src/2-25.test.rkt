#lang racket/base

(require rackunit)

(test-case "Give combinations of cars and cdrs that will pick 7 from each of the following : "
  (let ((x '(1 3 '(5 7) 9)))
    (check-equal? (car (cdr (car (cdr (car (cdr (cdr x))))))) 7)
  )
  (let ((x '((7))))
    (check-equal? (car (car x)) 7)
  )
  ; The data getting with cdr is list type. so it closed two times.
  ; Therefore we need to call the 'car' procedure in pair with 'cdr'. (The first problem is solved that way.)
  (let ((x '(1 (2 (3 (4 (5 (6 7))))))))
    (check-equal?
    (car (cdr
      (car (cdr
        (car (cdr
          (car (cdr
            (car (cdr
              (car (cdr x)))))))))))) 7)))

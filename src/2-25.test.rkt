#lang racket/base

(require rackunit)

(test-case "Give combinations of cars and cdrs that will pick 7 from each of the following : "
  (let ((x '(1 3 '(5 7) 9)))
    (check-equal? (car (cdr (car (cdr (car (cdr (cdr x))))))) 7)
  )
  (let ((x '((7))))
    (check-equal? (car (car x)) 7)
  )
  ; cdr 로 불러오는 데이터는 다시 닫혀 있어 car 을 쌍으로 불러줘야 한다. 세번째 문제만이 아닌 첫번째 문제도 마찬가지다.
  (let ((x '(1 (2 (3 (4 (5 (6 7))))))))
    (check-equal?
    (car (cdr
      (car (cdr
        (car (cdr
          (car (cdr
            (car (cdr
              (car (cdr x)))))))))))) 7)))

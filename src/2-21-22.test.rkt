#lang racket/base

(require rackunit rackunit/text-ui)
(require "utils.rkt")

(run-test
  (test-suite "Here are two different definitions of square-list. Complete both of them by filling in the missing expressions: "
  
    (test-case "Recursive version"
      (define (square-list items)
        (if (null? items)
            '()
            (cons
              (square (car items))
              (square-list (cdr items)))))
      
      (check-equal? (square-list (list 1 2 3 4)) '(1 4 9 16)))
    
    (test-case "map version"
      (define (square-list items)
        (map square items))    
    
    (check-equal? (square-list (list 1 2 3 4)) '(1 4 9 16)))
    
    (test-case "iteration version"
      (define (square-list items)
        (define (iter mapping items)
          (if (null? items)
            mapping
            (iter
            ; cons 로 데이터를 묶으면 데이터가 스택 형태로 쌓입니다.
            ; 닫힘 성질에 따라 역으로 집어넣기에는 reverse 프로시저를 쓰지 않은 이상 불가능하다.
            ; 가장 최근에 묶은 원소의 깊이가 0이고, 처음으로 묶은 원소는 N이다.
              (cons (square (car items)) mapping)
              (cdr items))))
            (iter '() items))
    
      (check-equal? (reverse (square-list (list 1 2 3 4))) '(1 4 9 16)))))

; 닫힘 성질: 그 연산으로 만든 물체가 다시 그 연산의 대상이 될 수 있음을 말한다.
; https://sarabander.github.io/sicp/html/2_002e2.xhtml#FOOT72

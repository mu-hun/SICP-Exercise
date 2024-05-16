#lang racket/base

(define (make-account balance password) 
  (define count 0)
  
  (define (withdraw amount)
    (if (>= balance amount) (begin (set! balance (- balance amount)) balance)
        "Insufficient funds"))
  
  (define (deposit amount) 
    (set! balance (+ balance amount)) balance)
  
  (define (dispatch p m)
    (cond ((not (eq? p password))
    (begin (set! count (+ count 1))
      (lambda (x) (if (>= count 7) 'call-the-police "Incorrect password"))))
      ((eq? m 'withdraw) withdraw) 
      ((eq? m 'deposit) deposit) 
      (else (error "Unknown type" m))))
  dispatch)

(provide make-account)

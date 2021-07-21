#lang racket/base

(define (make-account balance password) 
  (define (withdraw amount)
    (if (>= balance amount) (begin (set! balance (- balance amount)) balance)
        "Insufficient funds"))
  
  (define (deposit amount) 
    (set! balance (+ balance amount)) balance)
  
  (define (dispatch p m) 
    (cond ((not (eq? p password)) (lambda (x) "Incorrect password")) 
          ((eq? m 'withdraw) withdraw) 
          ((eq? m 'deposit) deposit) 
          (else (error "Unknown type" m)))) 
  dispatch) 

(provide make-account)

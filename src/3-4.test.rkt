#lang racket/base

(require rackunit rackunit/text-ui)
(require "3-4.rkt")

(define acc 
  (make-account 100 'secret-password))

(run-test
 (test-suite "Modify the make-account procedure so that it creates password-protected accounts. That is, make-account should take a symbol as an additional argument, as in"
             
             (let ((acc (make-account 100 'secret-password)))
               
               (test-case "The resulting account object should process a request only if it is accompanied by the password with which the account was created, and should otherwise return a complaint: "
                          (check-equal? ((acc 'secret-password 'withdraw) 40) 60))
               (test-case "Modify the make-account procedure of Exercise 3.3 by adding another local state variable so that, if an account is accessed more than seven consecutive times with an incorrect password, it invokes the procedure call-the-cops."
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) "Incorrect password")
                          (check-equal? ((acc 'some-other-password 'deposit) 50) 'call-the-police)))))

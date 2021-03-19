#lang racket/base

; hack: "range: unbound identifier" in test procedure
; source from https://gist.github.com/dnaeon/6ceafa60e92d9d180d8145d0b7fe430f
(define validate-step
  (lambda (step)
    (let ((s
	   (cond
	    ((and (list? step) (not (null? step))) (car step))
	    ((and (list? step) (null? step)) 1)
	    ((string? step) (string->number step))
	    ((integer? step) step))))
      (if (integer? s)
	  (if (= s 0) (error "step cannot be zero") s)
	  (error 'validate-step "invalid step given" s)))))

(define range
  (lambda (min max . step)
    (let ((step (validate-step step)))
      (if (< min max)
	  (cons min (range (+ min step) max step))
	  '()))))

(define (cube x) (* x x x))

(define (inc n) (+ n 1))

(define (identity x) x)

(define (square x) (expt x 2))

(define (average a b)
  (/ (+ a b) 2))

(provide range cube inc identity square average)

#lang racket/base

(define (make-monitored f)
  (let ((count 0))
    (lambda (value) 
      (cond ((eq? value 'how-many-calls?)
             (begin (set! count (+ count 1)) count))
            ((eq? value 'reset-count)
             (begin (set! count 0) count))
            (else (f value))))))

(provide make-monitored)

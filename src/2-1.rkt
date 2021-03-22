#lang racket/base

(define numer car)
(define denom cdr)

(define (make-rat n d)

  (define positive
    (or (and (> n 0) (> d 0))
      (and (< n 0) (< d 0))))
  
  (define divided
    (let ((g (gcd n d)))
      (cons (abs (/ n g)) (abs (/ d g)))))
  
  (if positive
    divided
    (cons (- (numer divided)) (denom divided))))

(provide numer denom make-rat)

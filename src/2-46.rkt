#lang racket/base

(define make-vect cons)
(define xcor-vect car)
(define ycor-vect cdr)

(define (add-vect v1 v2)
  	  (let ((x1 (xcor-vect v1))
                (x2 (xcor-vect v2))
                (y1 (ycor-vect v1))
                (y2 (ycor-vect v2)))
            (cons (+ x1 x2) (+ y1 y2))))

(define (sub-vect v1 v2)
  	  (let ((x1 (xcor-vect v1))
                (x2 (xcor-vect v2))
                (y1 (ycor-vect v1))
                (y2 (ycor-vect v2)))
            (cons (- x1 x2) (- y1 y2))))

(define (scale-vect s vect)
  (let ((x (xcor-vect vect))
        (y (ycor-vect vect)))
    		(cons (* x s) (* y s))))

(provide make-vect xcor-vect ycor-vect
         add-vect sub-vect scale-vect)

#lang sicp

(#%require sicp-pict)

(define wave einstein)

(define (split main-split sub-split)
  (lambda (painter n)
    (if (= n 0)
        painter
        (let ((smaller (right-split painter 
                                    (- n 1))))
          (main-split painter 
                      (sub-split smaller smaller))))))

(define right-split (split beside below))
(define up-split (split below beside))

(define (corner-split painter n)
  (if (= n 0)
      painter
      (let ((up (up-split painter (- n 1)))
            (right (right-split painter 
                                (- n 1))))
        (let ((top-left (beside up up))
              (bottom-right (below right 
                                   right))
              (corner (corner-split painter 
                                    (- n 1))))
          (beside (below painter top-left)
                  (below bottom-right 
                         corner))))))

(paint (corner-split wave 4))

(define (square-limit painter n)
  (let ((quarter (corner-split painter n)))
    (let ((half (beside (flip-horiz quarter) 
                        quarter)))
      (below (flip-vert half) half))))

(paint (square-limit wave 2))

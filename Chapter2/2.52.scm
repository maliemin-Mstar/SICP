(define (corner-split painter n)
  (if (= n 0)
    painter
    (beside (below painter (up-split painter (- n 1)))
            (below (right-split painter (- n 1))
                   (corner-split painter (- n 1))))))

(define (square-limit painter n)
  (let ((combine4 (square-of-four flip-vert rotate180
                                  identity flip-horiz)))
    (combine4 (corner-split painter n))))

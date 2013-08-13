(define (sqr n) (* n n))

(define (smallest n)
  (define (iter n t)
    (cond ((> (sqr t) n) n)
          ((= 0 (remainder n t)) t)
          (else (iter n (+ 1 t)))))
  (iter n 2))

(define (double n) (+ n n))

(define (halve n) (/ n 2))

(define (mul a b)
  (define (iter c a b)
    (cond ((= b 0) c)
          ((even? b) (iter c (double a) (halve b)))
          (else (iter (+ c a) a (- b 1)))))
  (iter 0 a b))

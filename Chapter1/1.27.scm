(define (sqr n) (* n n))

(define (expmod base e m)
  (cond ((= e 0) 1)
        ((even? e) (remainder (sqr (expmod base (/ e 2) m))
                                m))
        (else
          (remainder (* base (expmod base (- e 1) m)) m))))

(define (c? n)
  (define (iter i)
    (cond ((= i n) #t)
          ((= (expmod i n n) i) (iter (+ i 1)))
          (else #f)))
  (iter 1))

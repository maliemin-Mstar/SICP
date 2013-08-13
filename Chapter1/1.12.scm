(define (f r c)
  (cond ((= r c) 1)
        ((= c 1) 1)
        (else (+ (f (- r 1) (- c 1)) (f (- r 1) c)))))

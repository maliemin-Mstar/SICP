(define (next n)
  (if (= 2 n) 3 (+ 2 n)))a

(define (smallest_divisor n)
  (define (iter i)
    (cond ((> (sqr i) n) n)
          ((= 0 (remainder n i)) i)
          (else (iter (next i)))))
  (iter 2))

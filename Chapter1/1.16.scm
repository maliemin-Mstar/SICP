(define (is_even n) (= 0 (remainder n 2)))

(define (sqr n) (* n n))

(define (fast_expt b n)
  (define (iter a b n)
    (cond ((= 0 n) a)
          ((is_even n) (iter a (sqr b) (/ n 2)))
          (else (iter (* a b) b (- n 1)))))
  (iter 1 b n))

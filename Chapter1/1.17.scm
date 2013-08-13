(define (double n) (+ n n))

(define (halve n) (/ n 2))

(define (is_even n) (= 0 (remainder n 2)))

(define (mul a b)
  (cond ((= b 0) 0)
        ((is_even b) (double (mul a (halve b))))
        (else (+ a (mul a (- b 1))))))

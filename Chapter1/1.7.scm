(define (my_abs x)
  (if (< x 0)
    (- x)
    x))

(define (sqr x)
  (* x x))

(define (enough guess x)
  (< (/ (my_abs (- guess
                   (/ (+ guess
                         (/ x guess))
                      2)))
        guess)
     0.00001))

(define (my_sqrt guess x)
  (if (enough guess x)
    guess
    (my_sqrt (/ (+ guess
                   (/ x guess))
                2) x)))

(my_sqrt 1.0 0.000000000000000000000000000000000000000000000002)

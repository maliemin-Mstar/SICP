(define (max_two_sum x y z)
  (cond ((> x y) (if (> z y) (+ x z) (+ x y)))
        (else (if (> z x) (+ y z) (+ x y)))))

(max_two_sum 1 3 -2)

(max_two_sum 3 1 -2)

(max_two_sum 4 2 5)

(max_two_sum 9 3 7)

(max_two_sum 1 3 4)

(max_two_sum 2 9 6)

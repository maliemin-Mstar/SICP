(define (recur n)
  (if (< n 3)
    n
    (+ (recur (- n 1))
       (* 2 (recur (- n 2)))
       (* 3 (recur (- n 3))))))

(define (iter n)
  (define (f_iter cnt a b c)
    (if (= cnt n)
      a
      (f_iter (+ cnt 1) b c (+ (* 3 a) (* 2 b) c))))
  (f_iter 0 0 1 2))

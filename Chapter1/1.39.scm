(define (get-odd n)
  (- (* 2 n) 1))

(define (tan-cf x k)
  (define (rec cnt)
    (if (= cnt k)
      (/ (square x) (get-odd k ))
      (/ (square x) (- (get-odd cnt) (rec (+ 1 cnt))))))
  (/ (rec 1) x))

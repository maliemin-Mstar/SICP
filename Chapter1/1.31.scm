(define (pro term a next b)
  (if (> a b)
    1
    (* (term a) (pro term (next a) next b))))

(define (inc x) (+ 1 x))

(define (f x) x)

(define (fac n)
  (pro f 1 inc n))

(define (f2 x)
  (if (even? x)
    (/ (+ 2 x) (+ 1 x))
    (/ (+ 1 x) (+ 2 x))))

(define (get_pi n)
  (* 4.0 (pro f2 1 inc n)))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a) (sum term (next a) next b))))

(define (cube x) (* x x x))

(define (xin f a b n)
  (define h (/ (- b a) n))
  (define (addtwo x) (+ x 2.0))
  (define (fy x) (f (+ a (* x h))))
  (* (/ h 3)
     (+ (fy 0)
        (* 4 (sum fy 1 addtwo (- n 1)))
        (* 2 (sum fy 2 addtwo (- n 2)))
        (fy n))))

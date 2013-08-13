(load "1.31.scm")

(define (acc combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (acc combiner null-value term (next a) next b))))

(define (sum term a next b)
  (acc + 0 term a next b))

(define (pro term a next b)
  (acc * 1 term a next b))

(load "1.22.scm")

(define (filtered-acc fil? comb null-v term a next b)
  (define (iter i result)
    (cond ((> i b) result)
          ((fil? (term i)) (iter (next i) (comb result (term i))))
          (else (iter (next i) result))))
  (iter a null-v))

(define (inc x) (+ 1 x))

(define (f x) x)

(define (prim-sum a b)
  (filtered-acc prim? + 0 f a inc b))

(define (pro n)
  (define (prim-with? x)
    (= (gcd x n) 1))
  (filtered-acc prim-with? * 1 f 1 inc (- n 1)))

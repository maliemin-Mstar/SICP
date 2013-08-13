(load "1.35.scm")
(load "1.43.scm")

(define (average a b)
  (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (my-sqrt x)
  (fixed-point (lambda (y) (/ (+ y (/ x y)) 2)) 1.0))

(define (four-root x)
  (fixed-point ((repeated average-damp 2)
                (lambda (y) (/ x (* y y y)))) 1.0))

(define (n-times n x)
  (define (iter cnt result)
    (if (= cnt n)
      result
      (iter (+ 1 cnt) (* x result))))
  (iter 0 1))

(define (lg n)
  (define (iter cnt now)
    (if (< now 2)
      cnt
      (iter (+ 1 cnt) (/ now 2))))
  (iter 0 n))

(define (n-root n x)
  (fixed-point ((repeated average-damp (lg n))   ;lg(n) times average-damp
                (lambda (y) (/ x (n-times (- n 1) y)))) 1.0))

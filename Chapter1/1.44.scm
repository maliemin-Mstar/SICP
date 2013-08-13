(load "1.43.scm")

(define (three-aver a b c)
  (/ (+ a b c) 3))

(define dx 0.00001)

(define (smooth f)
  (lambda (x)
    (three-aver (f (- x dx)) (f x) (f (+ x dx)))))

(define (n-smooth f n)
  ((repeated smooth n) f))

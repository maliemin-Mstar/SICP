(load "1.42.scm")

(define (repeated f n)
  (lambda (x)
    (if (= 1 n) (f x)
      ((compose f (repeated f (- n 1))) x))))

(define (iterative-improve enough? improve)
  (lambda (guess)
    (define (iter now)
      (let ((next (improve now)))
        (if (enough? now next)
          next
          (iter next))))
    (iter guess)))

(define (close-enough? a b)
  (< (abs (- a b)) 0.00001))

(define (fixed-point f guess)
  ((iterative-improve close-enough? f) guess))

(define (average a b)
  (/ (+ a b) 2))

(define (my-sqrt x)
  (define (improve guess)
    (average guess (/ x guess)))
  ((iterative-improve close-enough? improve) 1.0))

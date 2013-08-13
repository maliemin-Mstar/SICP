(define (fixed-point f first-guess)
  (define (enough? a b)
    (< (abs (- a b)) 0.0001))
  (define (iter guess)
    (let ((next (f guess)))
      (if (enough? guess next)
        next
        (iter next))))
  (iter first-guess))

(fixed-point (lambda (x) (+ 1 (/ 1 x))) 1.0)

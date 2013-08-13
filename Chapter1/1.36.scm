(define (fixed-point f first-guess)
  (define (enough? a b)
    (< (abs (- a b)) 0.001))
  (define (iter guess)
    (let ((next (f guess)))
      (display next)
      (newline)
      (if (enough? guess next)
        next
        (iter next))))
  (newline)
  (display first-guess)
  (newline)
  (iter first-guess))

(fixed-point (lambda (x) (/ (log 1000) (log x))) 2)

(fixed-point (lambda (x) (/ (+ (/ (log 1000) (log x)) x) 2)) 2)

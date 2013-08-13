(load "for2.33.scm")

(define (horner-eval x coefficient-seq)
  (acc (lambda (this-coeff higher-terms)
         (+ (* higher-terms x) this-coeff))
       0
       coefficient-seq))

(horner-eval 2 (list 1 3 0 5 0 1))

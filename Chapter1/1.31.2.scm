(load "1.31.scm")

(define (pro term a next b)
  (define (iter i result)
    (if (> i b)
      result
      (iter (next i) (* (term i) result))))
  (iter a 1))

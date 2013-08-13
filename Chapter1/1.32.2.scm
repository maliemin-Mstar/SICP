(load "1.31.scm")

(define (acc combiner null-value term a next b)
  (define (iter i result)
    (if (> i b)
      result
      (iter (next i) (combiner result
                               (term i)))))
  (iter a null-value))

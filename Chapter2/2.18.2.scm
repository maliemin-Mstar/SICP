(define (my-reverse l)
  (define (iter ll result)
    (if (null? ll)
      result
      (iter (cdr ll) (cons (car ll) result))))
  (iter l '()))

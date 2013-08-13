(define (same a . b)
  (define (iter l result)
    (if (null? l)
      result
      (let ((now (car l)))
        (if (= (remainder now 2) (remainder a 2))
          (iter (cdr l) (cons now result))
          (iter (cdr l) result)))))
  (reverse (iter b (list a))))

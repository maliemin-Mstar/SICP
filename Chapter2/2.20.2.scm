(define (same a . b)
  (define (iter l result)
    (if (null? l)
      result
      (let ((now (car l)))
        (iter (cdr l) (if (= (remainder now 2)
                             (remainder a 2))
                        (append result (list now))
                        result)))))
  (iter b (list a)))

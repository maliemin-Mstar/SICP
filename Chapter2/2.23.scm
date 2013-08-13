(define (for-each f items)
  (define (iter l)
    (cond ((not (null? l))
               (f (car l))
               (iter (cdr l)))))
  (iter items))

(for-each (lambda (x) (newline) (display x))
          (list 1 2 3 4))

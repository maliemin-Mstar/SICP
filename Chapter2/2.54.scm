(define (equal? a b)
  (cond ((and (not (pair? a)) (not (pair? b))) (eq? a b))
        ((and (pair? a) (pair? b))
         (if (equal? (car a) (car b))
           (equal? (cdr a) (cdr b))
           #f))
        (else #f)))

(equal? '(a b c) '(a (b c)))

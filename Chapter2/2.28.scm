(define x (list (list 1 2) (list 3 4)))

(define (fri tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (list tree))
        (else (append (fri (car tree)) (fri (cdr tree))))))

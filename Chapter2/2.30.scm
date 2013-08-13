(define a (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define (sqr-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (sqr-tree (car tree)) (sqr-tree (cdr tree))))))

(define (mp proc items)
  (if (null? items)
    '()
    (cons (proc (car items)) (mp proc (cdr items)))))

(define (sqr-tree tree)
  (mp
  (lambda (sub-tree)
    (cond ((null? sub-tree) '())
          ((not (pair? sub-tree)) (square sub-tree))
          (else (sqr-tree sub-tree))))
  tree))

(load "2.30.scm")

(define (filter predicate seq)
  (cond ((null? seq) '())
        ((predicate (car seq))
         (cons (car seq) (filter predicate (cdr seq))))
        (else (filter predicate (cdr seq)))))

(define (acc op init seq)
  (if (null? seq)
    init
    (op (car seq) (acc op init (cdr seq)))))

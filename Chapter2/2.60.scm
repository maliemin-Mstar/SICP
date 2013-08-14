(load "2.59.scm")

(define (adjoin-set x set)
  (cons x set))

(define (union-set s1 s2)
  (append s1 s2))

(define (remove-element x set)
  (cond ((null? set) set)
        ((= x (car set)) (cdr set))
        (else (cons (car set) (remove-element x (cdr set))))))

(define (intersection-set s1 s2)
  (cond ((or (null? s1) (null? s2)) '())
        ((element-of-set? (car s1) s2)
         (cons (car s1) (intersection-set (cdr s1) (remove-element (car s1) s2))))
        (else (intersection-set (cdr s1) s2))))

(intersection-set '(1 2 3 1) '(3 5 1))

(load "2.37.scm")

(define (fold-left op init seq)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter init seq))

(define (fold-right op init seq)
  (acc op init seq))

(fold-right / 1 (list 1 2 3))

(fold-left / 1 (list 1 2 3))

(fold-right list '() (list 1 2 3))

(fold-left list '() (list 1 2 3))

(define a (list 6 27 45))

(fold-left gcd (car a) a)

(fold-right gcd (car a) a)

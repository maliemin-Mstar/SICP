(load "2.30.scm")

(define (subsets s)
  (if (null? s)
    (list '())
    (let ((rest (subsets (cdr s))))
      (append rest (mp (lambda (x)
                          (cons (car s) x))
                        rest)))))

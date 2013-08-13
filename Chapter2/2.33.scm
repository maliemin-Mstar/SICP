(load "for2.33.scm")

(define (mp p seq)
  (acc (lambda (x y)
         (cons (p x) y))
       '()
       seq))

(define (append seq1 seq2)
  (acc cons seq2 seq1))

(define (len seq)
  (acc (lambda (x y)
         (+ 1 y))
       0
       seq))

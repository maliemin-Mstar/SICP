(load "2.46.scm")

(define (make-segment vs ve)
  (cons vs ve))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

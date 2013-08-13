(load "2.48.scm")

(define a (make-vect 0 0))

(define b (make-vect 0 1))

(define c (make-vect 1 1))

(define d (make-vect 1 0))

(define a-painter
  (segments->painter
    (list
      (make-segment a b)
      (make-segment b c)
      (make-segment c d)
      (make-segment d a))))

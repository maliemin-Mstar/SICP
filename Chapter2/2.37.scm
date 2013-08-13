(load "2.36.scm")

(define (dot-product v w)
  (acc + 0 (map * v w)))

(define (matrix-*-vector m v)
  (mp (lambda (x) (dot-product x v)) m))

(define m (list (list 1 2 3 4)
                (list 4 5 6 6)
                (list 6 7 8 9)))

(define v (list 1 2 3 4))

(matrix-*-vector m v)

(define (transpose mat)
  (acc-n cons '() mat))

(transpose m)

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (mp (lambda (x) (matrix-*-vector cols x)) m)))

(define n (list (list 1 0)
                (list 9 3)
                (list 9 1)
                (list 2 3)))

(matrix-*-matrix m n)

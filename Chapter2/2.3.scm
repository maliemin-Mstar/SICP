(load "2.2.scm")

(define (rec p1 p2)        ;对角线的两点
  (cons p1 p2))

(define (height r)
  (abs (- (x-point (car r)) (x-point (cdr r)))))

(define (width r)
  (abs (- (y-point (car r)) (y-point (cdr r)))))

(define (area r)
  (* (height r) (width r)))

(define (len r)
  (* (+ (height r) (width r)) 2))

(define a (rec (make-point 6 1) (make-point 1 4)))

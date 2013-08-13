(load "2.7.scm")

(define (make-center-percent c p)
  (let ((temp (* c p)))
    (make-interval (- c temp) (+ c temp))))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (percent i)
  (/ (/ (- (upper-bound i) (lower-bound i)) 2) (center i)))

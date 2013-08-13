(define (cont-frac n d k)
  (define (rec cnt)
    (if (= cnt k)
      (/ (n k) (d k))
      (let ((other (rec (+ 1 cnt))))
        (/ (n cnt) (+ (d cnt) other)))))
  (rec 1))

(define (cont-frac n d k)
  (define (iter cnt result)
    (if (= cnt 0)
      result
      (iter (- cnt 1) (/ (n cnt) (+ result (d cnt))))))
  (iter k 0))

(define (k x)
  (cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             x))

(define (solve-a)
  (define (enough? a b)
    (< (abs (- a b)) 0.00001))
  (define (iter now kk)
    (let ((next (k kk)))
      (if (enough? now next)
        kk
        (iter next (+ 1 kk)))))
  (iter (k 1) 2))

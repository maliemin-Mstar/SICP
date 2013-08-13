(define (sqr n) (* n n))

(define (smallest_divisor n)
  (define (iter i)
    (cond ((> (sqr i) n) n)
          ((= 0 (remainder n i)) i)
          (else (iter (+ i 1)))))
  (iter 2))

(define (prim? n)
  (= n (smallest_divisor n)))

(define (smallest_n_prims n cnt)
  (define (iter i cnt)
    (cond ((= cnt 0) (display "are prims") (newline))
          ((prim? i) (display i) (newline) (iter (+ i 2) (- cnt 1)))
          (else (iter (+ i 2) cnt))))
  (iter (if (even? n) (+ 1 n) n) cnt))

(define (search_for_prims n)
  (define start (real-time-clock))
  (smallest_n_prims n 3)
  (display (- (real-time-clock) start)))

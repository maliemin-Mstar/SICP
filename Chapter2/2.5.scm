(define (exp base n)
  (define (iter i n result)
    (cond ((= n 0) result)
          ((even? n) (iter (square i) (/ n 2) result))
          (else (iter i (- n 1) (* i result)))))
  (iter base n 1))

(define (cons a b)
  (* (exp 2 a) (exp 3 b)))

(define (f n m)
  (define (iter n cnt)
    (if (= 0 (remainder n m))
      (iter (/ n m) (+ 1 cnt))
      cnt))
  (iter n 0))

(define (car c)
  (f c 2))

(define (cdr c)
  (f c 3))

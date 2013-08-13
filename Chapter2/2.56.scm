(define (exponentiation? x)
  (and (pair? x) (eq? (car x) '**)))

(define (base x)
  (cadr x))

(define (exponent x)
  (caddr x))

(define (make-exponentiation b e)
  (cond ((=number? e 0) 1)
        ((=number? e 1) b)
        (else (list '** b e))))

(define (deriv exp var)
  (cond (())
        (())
        (())
        (())
        ((exponentiation? exp)
         (let ((e (exponent exp))
               (b base exp))
           (make-product e
                         (make-product (make-exponentiation b
                                                            (- e 1))
                                       (deriv b var)))))
        ()))

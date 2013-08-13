(define (sum? x)
  (and (pair? x)
       (eq? '+ (cadr x))))

(define (addend s)
  (car s))

(define (augend s)
  (caddr s))

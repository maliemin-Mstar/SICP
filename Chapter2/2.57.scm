(define (make-sum a b . c)
  (append (list '+ a b) c))

(define (augend x)
  (let ((t (cddr x)))
    (if (= (length t) 1)
      (car t)
      (cons '+ t))))

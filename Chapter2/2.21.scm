(define (map proc items)
  (if (null? items)
    '()
    (cons (proc (car items))
          (map proc (cdr items)))))

(define (sqr-list items)
  (if (null? items)
    '()
    (cons (square (car items))
          (sqr-list (cdr items)))))

(define (sqr-list items)
  (map square items))

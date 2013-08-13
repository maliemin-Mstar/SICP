(define (reverse l)
  (define (iter lst result)
    (if (null? lst)
      result
      (iter (cdr lst) (cons (car lst) result))))
  (iter l '()))

(define x (list (list 1 2) (list 3 4)))

(define (deep-reverse l)
  (define (iter lst result)
    (if (null? lst)
      result
      (iter (cdr lst) (cons (reverse (car lst)) result))))
  (iter l '()))

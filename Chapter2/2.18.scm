(load "2.17.scm")

(define (my-reverse l)
  (define (pre li)
    (if (null? (cdr li))
      (list)
      (cons (car li) (pre (cdr li)))))
  (define (iter sl dl)
    (if (null? sl)
      dl
      (iter (pre sl) (append dl (last-pair sl)))))
  (iter l (list)))

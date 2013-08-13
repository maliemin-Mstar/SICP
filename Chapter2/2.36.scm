(load "for2.33.scm")

(define (acc-n op init seqs)
  (if (null? (car seqs))
    '()
    (cons (acc op init (mp car seqs))
          (acc-n op init (mp cdr seqs)))))

(define a (list (list 1 2 3)
                (list 4 5 6)
                (list 7 8 9)
                (list 10 11 12)))

(acc-n + 0 a)

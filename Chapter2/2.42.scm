(load "2.41.scm")

(define empty-board '())

(define (adjoin-position r k rest)
  (cons r rest))

(define (safe? k p)
  (define (d? d1 d2 cnt lst)
    (cond ((= cnt k) #t)
          ((or (= d1 (car lst)) (= d2 (car lst))) #f)
          (else (d? (- d1 1) (+ d2 1) (+ cnt 1) (cdr lst)))))
  (and (= (length (filter (lambda (x) (= x (car p))) p)) 1)
       (d? (- (car p) 1) (+ 1 (car p)) 1 (cdr p))))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
      (list empty-board)
      (filter
        (lambda (positions) (safe? k positions))
        (flatmap
          (lambda (rest-of-queens)
            (mp (lambda (new-row)
                  (adjoin-position new-row k rest-of-queens))
                (enum 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(for-each (lambda (x) (newline) (display x))
          (queens 8))

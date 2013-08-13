(load "2.39.scm")
(load "./Chapter_1/1.22.scm")

(define (flatmap proc seq)
  (acc append '() (mp proc seq)))

(define (prim-sum? pair)
  (prim? (+ (car pair) (cadr pair))))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (enum low high)
  (if (> low high)
    '()
    (cons low (enum (+ low 1) high))))

(define (prim-sum-pairs n)
  (mp make-pair-sum
      (filter prim-sum?
              (flatmap
                (lambda (i)
                  (mp (lambda (j) (list i j))
                      (enum 1 (- i 1))))
                (enum 1 n)))))

(define (unique-pairs n)
  (flatmap (lambda (i)
             (mp (lambda (j) (list i j)) (enum 1 (- i 1))))
           (enum 1 n)))

(define (prim-sum-pairs n)
  (mp make-pair-sum
      (filter prim-sum? (unique-pairs n))))

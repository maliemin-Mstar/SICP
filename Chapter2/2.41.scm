(load "2.40.scm")

(define (f n s)
  (define (make pair)
    (list (car pair) (cadr pair) (- s (car pair) (cadr pair))))
  (define (ok? pair)
    (let ((l (car pair))
          (r (cadr pair))
          (rest (- s (car pair) (cadr pair))))
      (and (> rest 0)
           (< rest s)
           (not (= rest l))
           (not (= rest r)))))
  (mp make
      (filter ok? (unique-pairs n))))

(define (make-mobile left right)
  (list left right))

(define (make-branch len structure)
  (list len structure))

(define (left-branch m)
  (car m))

(define (right-branch m)
  (cadr m))

(define (branch-len b)
  (car b))

(define (branch-structure b)
  (cadr b))

(define (total-weight m)
  (+ (branch-weight (left-branch m))
     (branch-weight (right-branch m))))

(define (branch-weight b)
  (let ((struc (branch-structure b)))
    (if (pair? struc)
      (total-weight struc)
      struc)))

;test
(define b3 (make-branch 1 4))
(define b4 (make-branch 1 7))
(define h2 (make-mobile b3 b4))
(define b1 (make-branch 1 2))
(define b2 (make-branch 1 h2))
(define h1 (make-mobile b1 b2))

(total-weight h1)  ;answer is 13

(define (matrix b)
  (* (branch-len b) (branch-weight b)))

(define (mobile-ok? m)
  (let ((lb (left-branch m))
        (rb (right-branch m)))
    (and (branch-ok? lb)
         (branch-ok? rb)
         (= (matrix lb) (matrix rb)))))

(define (branch-ok? b)
  (let ((struc (branch-structure b)))
    (if (pair? struc)
      (mobile-ok? struc)
      #t)))

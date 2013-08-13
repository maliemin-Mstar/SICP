(load "for2.33.scm")

(define (count-leaves t)
  (acc + 0 (mp (lambda (first)   ;这个map映射成社么我没想到 看题解的
                  (if (pair? first)
                    (count-leaves first)
                    1)) t)))

(load "1.37.scm")

(define e (+ 2
             (cont-frac (lambda (x) 1.0)
                        (lambda (x)
                          (let ((rem (remainder x 3)))
                            (if (or (= rem 1) (= rem 0))
                              1
                              (* 2 (ceiling (/ x 3))))))
                        100)))

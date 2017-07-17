(load "myeval.scm")

(define env1
  (extend-env 'x -1
              (extend-env 'y 4
                          (extend-env 'x 1
                                      (make-empty-env)))))
(define env2
  (extend-env 'm -1
              (extend-env 'a 4
                          (make-empty-env))))
(define env3
  (extend-env 'q -1
              (extend-env 'r 4
                          (make-empty-env))))

(myeval 'x env1) ;; -1
(myeval '4 env1) ;; 4
(myeval '(dec 4) env1) ;; 3
(myeval '(inc 4) env1) ;; 5
(myeval '(1 + 1) env1) ;; 2
(myeval '(10 - 3) env1) ;; 7
(myeval '(7 * 7) env1) ;; 49
(myeval '(56 / 7) env1) ;; 8
(myeval '(3 ** 3) env1) ;; 27
(myeval '(2 + (3 * x))      ;; the expression
           env1                ;; the environment
   )
(myeval '(2 + (3 * 1))      ;; the expression
           env1                ;; the environment
   )
(myeval '((m * a) - 0.1)    ;; the expression
           env2                ;; the environment
   )
(myeval '(4 * (s * s))      ;; the expression
           env3                ;; the environment
   )
(myeval '(1 & 1) env1) 
(myeval 's env3)   
(myeval '(56 / 0) env1)

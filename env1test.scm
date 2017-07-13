(load "env1.scm")

(make-empty-env)

(define aenv (extend-env 'a 1 (make-empty-env)))
(define benv (extend-env 'b 2 aenv))
(define cenv (extend-env 'c 3 benv))

(extend-env 'b 4 cenv)

(define test-env
    (extend-env 'a 1
        (extend-env 'b 2
            (extend-env 'c 3
                (extend-env 'b 4
                    (make-empty-env)))))
)

(apply-env test-env 'a)
(apply-env test-env 'b)
(apply-env test-env 'c)
(apply-env test-env 'd)

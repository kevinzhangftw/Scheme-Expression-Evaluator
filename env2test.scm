(load "env2.scm")

(make-empty-env)

((make-empty-env))

(define test-env
    (extend-env 'a 1
        (extend-env 'b 2
            (extend-env 'c 3
                (extend-env 'b 4
                    (make-empty-env)))))
)

test-env

(apply-env test-env 'a)
(apply-env test-env 'b)
(apply-env test-env 'c)
(apply-env test-env 'd)


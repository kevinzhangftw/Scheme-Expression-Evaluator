(load "env2.scm")

(make-empty-env)

((make-empty-env))

(define protoenv
	(extend-env 'key 1 (make-empty-env) )
)

(define alphaenv
	(extend-env 'kiy 5 protoenv)
)

(search 'key protoenv)
(search 'kay protoenv)
(search 'key alphaenv)

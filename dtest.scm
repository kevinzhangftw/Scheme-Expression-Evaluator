(load "duckenv.scm")

(make-empty-env)

((make-empty-env))

(define protoenv
	(extend-env 'key 1 (make-empty-env) )
)

(define alphaenv
	(extend-env 'key 5 protoenv)
)

(define make-empty-env
	(lambda () 
		(list)				
	)
)

(define extend-env
	(lambda (v val env)
		(cons (cons v val) env)  
	)
)

(define apply-env
	(lambda (env v)
		(if (equal? (car (car env)) v)
		    (cdr (car env))
		    (apply-env (cdr env) v)
		)
	)
)

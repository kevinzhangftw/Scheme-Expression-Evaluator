(define make-empty-env
	(lambda () 
		(lambda ()
			(list)
		)		
	)
)

(define extend-env
	(lambda (v val env)
		(lambda ()
			(cons (cons v val) env)	
		) 
	)
)

(define apply-env
	(lambda (env v)
		(cond 
		    ((null? (env))
		        (error "unknown variable"))
			((equal? (car (car (env))) v) 
				(cdr (car (env))))
		    (else
		    	(apply-env (cdr (env)) v))
		)
	)
)

(define search?
	(lambda (v env)
		(if (equal? (car (car (env))) v)
              #t
              (if (equal? ((cdr (env))) '())
                  #f
                  (search? v (cdr (env)))
              )
        )
	)
)

(define replace
	(lambda (v val env)
		(if (equal? (car (car (env))) v)
              #t
              (if (equal? ((cdr (env))) '())
                  #f
                  (search? v (cdr (env)))
              )
        )
	)
)

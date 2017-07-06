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

(define search
	(lambda (v env)
		(if (equal? (car (car (env))) v)
              #t
              (if (equal? ((cdr (env))) '())
                  #f
                  (search v (cdr (env)))
              )
        )
	)
)

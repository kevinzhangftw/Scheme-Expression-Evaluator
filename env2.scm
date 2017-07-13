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
			(if (search? v env)
              	;v found, replace val
              	(replace v val env)
              	;v not found, append new pair
				(cons (cons v val) env)
			)
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

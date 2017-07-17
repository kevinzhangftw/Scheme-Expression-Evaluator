(load "env1.scm")

(define (myeval expr env)
	(cond ((number? expr)
				expr)
		  ((symbol? expr)
	  	  		(apply-env env expr))
		  ((equal? (car expr) 'dec)
		   		(- (myeval (cadr expr) env) 1))
		  ((equal? (car expr) 'inc)
		   		(+ (myeval (cadr expr) env) 1))
		  ((equal? (cadr expr) '+)
		   		(+ (myeval (first expr) env) (myeval (last expr) env)))
		  ((equal? (cadr expr) '-)
		   		(- (myeval (first expr) env) (myeval (last expr) env)))
		  ((equal? (cadr expr) '*)
		   		(* (myeval (first expr) env) (myeval (last expr) env)))
		  ((equal? (cadr expr) '/)
		  		(if (= 0 (myeval (third expr) env))
					(error "you divided by 0 lol")
					(/ (myeval (first expr) env) (myeval (last expr) env)))
				)
		  ((equal? (cadr expr) '**)
		   		(expt (myeval (first expr) env) (myeval (last expr) env)))
		  (else
		  		(error "Expession not specified"))
	)
)

;expr =   "(" expr "+" expr ")"
;         | "(" expr "-" expr ")"
;         | "(" expr "*" expr ")"
;         | "(" expr "/" expr ")"
;         | "(" expr "**" expr ")"  ;; e.g. (2 ** 3) is 8, (3 ** 3) is 27
;         | "(" "inc" expr ")"      ;; adds 1 to expr
;         | "(" "dec" expr ")"      ;; subtracts 1 from expr
;         | var
;         | number
;number = a Scheme number
;var    = a Scheme symbol




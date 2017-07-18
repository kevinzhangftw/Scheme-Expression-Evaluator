
(define (simplify expr)
	(cond ((number? expr)
				expr)
		  ((symbol? expr)
	  	  		expr)
		  ((and (equal? (second expr) '+) (equal? (first expr) 0))
		  		(third expr))
		  ((and (equal? (second expr) '+) (equal? (third expr) 0))
		  		(first expr))
	  	  ((and (equal? (second expr) '*) (equal? (first expr) 0))
	  			0)
	      ((and (equal? (second expr) '*) (equal? (third expr) 0))
	  			0)
	)
)

(0 + e) simplifies to e
(e + 0) simplifies to e
(0 * e) simplifies to 0
(e * 0) simplifies to 0
(1 * e) simplifies to e
(e * 1) simplifies to e
(e - 0) simplifies to e
(e - e) simplifies to 0
(e ** 0) simplifies to 1
(e ** 1) simplifies to e
(1 ** e) simplifies to 1
if n is a number, then (inc n) simplifies to the value of n + 1
if n is a number, then (dec n) simplifies to the value of n - 1  
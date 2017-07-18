(load "simplify.scm")

(simplify 'x)
(simplify 4)
(simplify '(inc 5))
(simplify '(dec 5))
(simplify '(0 + e))
(simplify '(e + 0))
(simplify '(0 * e))
(simplify '(e * 0))
(simplify '(1 * e))
(simplify '(e * 1))
(simplify '(e - 0))
(simplify '(e - e))
(simplify '(e ** 0))
(simplify '(e ** 1))
(simplify '(1 ** e))
(simplify '((1 * (a + 0)) + 0))
(simplify '(((a + b) - (a + b)) * (1 * (1 + 0))))
(simplify '((1 * a) + (b * 1)))
(simplify '((1 * a) + (b * 0)))
(simplify '(z ** (b * (dec 1))))
(simplify '(4 + (a + b)))
(simplify '(4 + (a * b)))


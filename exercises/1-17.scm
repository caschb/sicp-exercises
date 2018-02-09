(define (fast-mult a b)
	(cond ((= b 1) a)
		  ((even? b) (double (fast-mult a (halve b))))
		  (else (+ a (fast-mult a (- b 1))))))

(define (even? n)
	(= (remainder n 2) 0))

(define (double n)
	(+ n n))

(define (halve n)
	(/ n 2))

(fast-mult 2 255)
(fast-mult 2 (fast-mult 2 255))

(define (fast-mult b n a)
	(cond ((= n 0) a)
		  ((even? n) (fast-mult (double b) (halve n) a))
		  (else (fast-mult b (- n 1) (+ b a)))))

(define (even? n)
	(= (remainder n 2) 0))

(define (double n)
	(+ n n))

(define (halve n)
	(/ n 2))

(fast-mult 2 256 0)
(fast-mult 2 1024 0)

(define (fast-expt b n a)
	(cond ((= n 0) a)
		  ((even? n) (fast-expt (square b) (/ n 2) a))
		  (else (fast-expt b (- n 1) (* a b)))))

(define (even? n)
	(= (remainder n 2) 0))

(define (square n)
	(* n n))

(fast-expt 2 12 1)

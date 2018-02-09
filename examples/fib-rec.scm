(define (fibo n)
    (cond
        ((= n 0) 1)
        ((= n 1) 1)
        (else (+ (fibo (- n 1)) (fibo (- n 2))))))
(fibo 5)

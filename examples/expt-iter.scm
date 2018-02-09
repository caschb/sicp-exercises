(define (expt-iter base pow prod i)
    (if (or (< pow i) (= pow i)) 
    prod
    (expt-iter base pow (* base prod) (+ i 1))))

(define (expt base pow)
    (expt-iter base pow 1 0))

(expt 2 8)

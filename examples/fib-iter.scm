(define (fib-iter n a b i)
    (if (< n i)
    a
    (fib-iter n (+ a b) a (+ i 1))))  

(define (fib n)
    (fib-iter n 1 1 1))

(fib 6)

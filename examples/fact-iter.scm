(define (fact-iter n p i)
    (if (< n i)
    p
    (fact-iter n (* p i) (+ 1 i))))

(define (factorial n)
    (fact-iter n 1 1))

(factorial 5)

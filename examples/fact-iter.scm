(define (factorial n)
    (define (fact-iter product counter)
        (if (> counter n)
            product
            (fact-iter (* counter product)
                (+ counter 1)
                n)))
    (fact-iter 1 1 n))
;; needs testing

(define (fast-exp base exponent)
    (fast-exp-iter 1 base exponent))

(define (fast-exp-iter product base exponent)
    (cond ((= exponent 0) product)
        ((even? exponent) (fast-exp-iter product (square base) (/ exponent 2)))
        (else (fast-exp-iter (* product base) base (- exponent 1)))
        ))

(define (even? n)
    (= (remainder n 2) 0))

(define (square n)
    (* n n))

(fast-exp 3 3)
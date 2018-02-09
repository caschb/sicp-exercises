(define (f-iter n a b c i)
    (if (or (< n i) (= n i)) 
    c
    (f-iter n (+ a (* 2 b) (* 3 c)) a b (+ i 1))))

(define (f n)
    (f-iter n 2 1 0 0))

(f 4)

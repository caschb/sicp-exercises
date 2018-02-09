(define (biggest a b)
  (cond ((> a b) a)
        (else b)))

(define (biggest-of-3 a b c)
  (if (= (biggest a b) a) 
         (biggest a c)
        (biggest b c)))

(define (second-biggest a b c)
  (cond ((= (biggest-of-3 a b c) a) (biggest b c))
        ((= (biggest-of-3 a b c) b) (biggest a c))
        (else (biggest a b))))

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-largest-squares x y z) (sum-of-squares (biggest-of-3 x y z) (second-biggest x y z)))

(sum-of-largest-squares 4 5 3)
;; 41
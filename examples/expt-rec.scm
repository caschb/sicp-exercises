(define (expt base pow)
    (if (= pow 0)
    1
    (* base (expt base (- pow 1)))))

(expt 2 8)

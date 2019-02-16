#lang lazy
(define Y (λ (f)
            ((λ (s f) (f (s s f)))
             (λ (s f) (f (s s f)))
             f)))

(define map2 (Y (λ (map2)
                  (λ (f xs)
                    (if (null? xs)
                        '()
                        (cons (f (car xs)) (map2 f (cdr xs))))))))

(!! (map2 (λ (x) (+ x 1)) '(0 1 2)))

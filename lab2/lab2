#lang racket
(require racket/trace)

;; 1.)
(define(gen-list start end)
  (cond
    [(> start end) '()]
    [(<= start end) (append (list start) (gen-list (+ start 1) end))]
  )
)


;; 2.)
(define (sum list)
  (cond
    [(null? list) 0]
    [else (+ (car list) (sum(cdr list)))])
  )

;; 3.)

(define (retrieve-first-n num lest)

  (cond
    [(< num (length(list lest)) 0)]
    [(= (sgn num) -1) null]
    [else (append (car(list lest)) (retrieve-first-n (- num 1) (list lest)))]
    )
  )
    
(retrieve-first-n 3 '(a b c d e f g h i))


;(sum '())
;(sum '(4 5 0 1)); ---> 10
;(sum (gen-list 1 5)); ---> 15

;(gen-list 5 1)
;(gen-list 1 5)



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
(define (retrieve-first-n n lest)
  (cond
    ((or (negative? n) (null? lest)) '()) ; return empty list if neg
    ((= n 0) '()) ; return empty list if 0
    (else (cons (car lest)
                (retrieve-first-n (- n 1) (cdr lest)))))) 


;; 4.)
(define (pair-sum? lst val)
  (cond
    ((< (length lst) 2) #f) ; If list has >2 elements, false
    ((= val (+ (first lst) (second lst))) #t)
    (else (pair-sum? (rest lst) val))))

;; 5.)
(define (mystery-tail L)
  (define (count L acc) ; Helper function for acc
    (if (null? L)
        acc
        (count (cdr L) (cons (car L) acc))))
  (count L '()))
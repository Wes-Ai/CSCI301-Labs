#lang racket

; Lab3 functions:

(define (member? x L)
  (cond
    [(null? L) false]
    [(eq? x (car L)) true]
    [(list? (car L)) (member? x (car L))]
    [else (member? x (cdr L))]
    )
  )

(define (subset? L1 L2)
  (cond
    [(list? (car L1)) (subset? (car L1) L2)]
    [(< 0 (length L1)) (member? (car L1) L2)]; If elements exist, check if L1[0] is in L2
    [else (subset? (cdr L1) L2)] ; Else, forgettaboutit and check the next iteration
    )
  )


;1
(define (set-equal? L1 L2)
  [eq? (subset? L1 L2) (subset? L2 L1)]
  )

(set-equal? '(1 (2 3)) '((3 2) 1)); ---> #t
(set-equal? '(1 2 3) '((3 2)1)); ---> #f
(set-equal? '(1 2 3) '((1 2 3))); ---> #f


#lang racket

;1
(define (member? x L)
  (cond
    [(null? L) false]
    [(eq? x (car L)) true]
    [else (member? x (cdr L))]
    )
  )
        
;2
(define (subset? L1 L2)
  (cond
    [< 0 (length L1) (member? (car L1) L2)]
    [else (subset? (cdr L1) L2)]
    )
  )

;3
(define (set-equal? L1 L2)
  [eq? (subset? L1 L2) (subset? L2 L1)]
  )

;4
(define (union s1 s2)
  [cond
    [(null? s2) s1]
    [(member? (car s2) s1)
     [union s1 (cdr s2)]]
    (else (union (cons (car s2) s1) (cdr s2)))
    ]
  )

(define (intersect s1 s2)
  [cond
    [(null? s1) s1]
    [(member? (car s1) s2)
     [intersect (cdr s1) s2]]
    (else (cons ((car s1) (intersect (cdr s1) s2))))
    ]
 )

;(intersect '(1 2 3) '(3 2 1)) ;---> (1 2 3)
;(intersect '(1 2 3) '(4 5 6)) ;---> ()
(intersect '(1 2 3) '(2 3 4 5 6)) ;---> (2 3)
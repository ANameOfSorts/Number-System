#lang racket
(require math/number-theory)

(define (invert p c)
  (if (eq? p (nth-prime (- c 1))) c (invert p (+ c 1))))

(define (transform i)
  (match (factorize i)
    ['() '()]
    [a (map (lambda (x) (list (transform (invert (car x) 1)) (transform (cadr x)))) a)]
  )
)

(define (reform l)
  (defactorize (map (lambda (x) (list (nth-prime (- (reform (car x)) 1)) (reform (cadr x)))) l)))

(define (lsize l)
  (match l
    ['() 2]
    [a (foldl + 2 (map lsize a))]
  )
)

(/ (foldl + 0 (map (lambda (x) (+ (floor (log x 2)) 1)) (range 1 128))) 128)

(/ (foldl + 0 (map (lambda (x) (lsize (transform x))) (range 1 128))) 128)

(/ (foldl + 0 (map (lambda (x) (+ (floor (log x 2)) 1)) (range 1 1024))) 1024)

(/ (foldl + 0 (map (lambda (x) (lsize (transform x))) (range 1 1024))) 1024)

(/ (foldl + 0 (map (lambda (x) (+ (floor (log x 2)) 1)) (range 1 8192))) 8192)

(/ (foldl + 0 (map (lambda (x) (lsize (transform x))) (range 1 8192))) 8192)
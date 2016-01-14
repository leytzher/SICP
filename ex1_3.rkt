#lang scheme

; SICP exercise 1.3
;; Define a procedure that takes 3 numbers as arguments and returns the sum of the squares of the two larger numbers

;;; create a square function
(define (sq a)
  (* a a ))

;;; create a sum of squares function
(define (ssq a b)
  (+ (sq a) (sq b)))

;;; large or equal
(define (>= a b) (or (> a b) (= a b))) 

;;; get the largest number out of 3
(define (largest a b c)
  (cond ((and (>= a b) (>= a c)) a)
        ((and (>= b a) (>= b c)) b)
        ((and (>= c b) (>= c a)) c)))

;;; get the sum of squares of the 2 largest numbers
;;; (this should be also the highest ssq)
(define (largest-ssq a b c)
  (largest (ssq a b)
           (ssq b c)
           (ssq a c)))
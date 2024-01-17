;; chapter1.scm

#lang sicp

(define x 69)

(define (square x) (* x x ))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (two-larger-sum-of-squares x y z)
        (cond ((and (> x z) (> y z)) (sum-of-squares x y))
              ((and (> x y) (> z y)) (sum-of-squares x z))
              (else (sum-of-squares y z))))


(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
;;test 0 (p))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average-float guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) .001))

(define (sqrt x)
  (exact->inexact (sqrt-iter 1 x)))

(define (sqrt-float x)
  (exact->inexact (sqrt x)))

(define (average-float x y)
  (exact->inexact (average x y)))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter-new-if guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter-new-if (improve guess x)
                            x)))
(define (improve-cube y x)
  (/ (+ (/ x (square y )) (* 2 y))3))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve-cube guess x)
                      x)))

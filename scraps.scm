#lang sicp

(define square
  (lambda (x) (* x x)))

(define position
  (lambda (a v u t)
    (+
     (*(*(square t)a)0.5)
     (+ u t)
     u)))

;(position 0 0 0 0)
; (position 0 0 20 0)
; (position 0 5 10 10)
; (position 2 2 2 2)
; (position 5 5 5 5)
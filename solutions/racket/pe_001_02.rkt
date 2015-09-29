#lang racket

; Project Euler <https://projecteuler.net>
; Problem: 1
; Solution: 2
; Author: Sean Broderick <hakutsuru@mac.com>
; Date: 2015-05-08


(define threshold 999)

(define sum03 
  (for/sum ([x (in-range 3 (add1 threshold) 3)]) x))

(define sum05
  (for/sum ([x (in-range 5 (add1 threshold) 5)])
    (if (= (modulo x 3) 0) 0 x)))

; yes, this is odd, but follows the spirit of the solution
; which is to obtain the sum of three-multiples, then add
; the sum of five-multiples (excluding duplicates)

(+ sum03 sum05)


; Result:
; threshold = 9,      result => 23
; threshold = 999,    result => 233168
; threshold = 999999, result => 233333166668

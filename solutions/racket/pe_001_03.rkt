#lang racket

; Project Euler <https://projecteuler.net>
; Problem: 1
; Solution: 3
; Author: Sean Broderick <hakutsuru@mac.com>
; Date: 2015-05-08


(define threshold 999)

; whole-number summation
; ((n^2)/2) + (n/2)
; ==> (n^2 + n) ÷ 2
(define (summation_to_number x)
  (quotient (+ (* x x) x) 2))

(define sum03
  (* 3 (summation_to_number (quotient threshold 3))))

(define sum05
  (* 5 (summation_to_number (quotient threshold 5))))

(define sum15
  (* 15 (summation_to_number (quotient threshold 15))))

(+ sum03 sum05 (- sum15))


; Result:
; threshold = 9,      result => 23
; threshold = 999,    result => 233168
; threshold = 999999, result => 233333166668

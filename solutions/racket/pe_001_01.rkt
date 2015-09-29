#lang racket

; Project Euler <https://projecteuler.net>
; Problem: 1
; Solution: 1
; Author: Sean Broderick <hakutsuru@mac.com>
; Date: 2015-05-08


(define threshold 999)

(for/sum ([i (in-range (add1 threshold))]) 
  (cond 
    [(= (modulo i 3) 0) i]
    [(= (modulo i 5) 0) i]
    [else 0]))


; Result:
; threshold = 9,      result => 23
; threshold = 999,    result => 233168
; threshold = 999999, result => 233333166668

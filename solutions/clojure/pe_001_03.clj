;; Project Euler <https://projecteuler.net>
;; Problem: 1
;; Solution: 3
;; Author: Sean Broderick <hakutsuru@mac.com>
;; Date: 2015-06-09


(def threshold (Integer/parseInt (second *command-line-args*)))

;; whole-number summation
;; ((n^2)/2) + (n/2)
(defn summation_to_number [x]
  (quot (+ (* x x) x) 2))

(def sum03
  (* 3 (summation_to_number (quot threshold 3))))

(def sum05
  (* 5 (summation_to_number (quot threshold 5))))
  
(def sum15
  (* 15 (summation_to_number (quot threshold 15))))

(def sum (+ sum03 sum05 (- sum15)))

(println sum)


;; Result (sum):
;; /opt/euler/clojure$ lein exec pe_001_03.clj 9
;; 23
;; /opt/euler/clojure$ lein exec pe_001_03.clj 999
;; 233168
;; /opt/euler/clojure$ lein exec pe_001_03.clj 999999
;; 233333166668

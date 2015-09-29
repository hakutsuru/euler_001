;; Project Euler <https://projecteuler.net>
;; Problem: 1
;; Solution: 2
;; Author: Sean Broderick <hakutsuru@mac.com>
;; Date: 2015-06-09


(def threshold (inc (Integer/parseInt (second *command-line-args*))))

(def sum-of-mult3
  (->> threshold
       range
       (take-nth 3)
       (apply +)))

;; sum multiples of 5 (excluding multiples of 3)
;; idea of reducing work by minimizing logic operations
;; seems compromised in this solution
(def sum-of-mult5
  (->> threshold
       range
       (take-nth 5)
       (filter #(> (mod % 3) 0))
       (apply +)))

(def sum (+ sum-of-mult3 sum-of-mult5))

(println sum)


;; Result (sum):
;; /opt/euler/clojure$ lein exec pe_001_02.clj 9
;; 23
;; /opt/euler/clojure$ lein exec pe_001_02.clj 999
;; 233168
;; /opt/euler/clojure$ lein exec pe_001_02.clj 999999
;; 233333166668

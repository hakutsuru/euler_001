;; Project Euler <https://projecteuler.net>
;; Problem: 1
;; Solution: 1
;; Author: Sean Broderick <hakutsuru@mac.com>
;; Date: 2015-06-09


(def threshold (inc (Integer/parseInt (second *command-line-args*))))

(def digits (take threshold (range)))

(def multiples
  (for [x digits
        :let [multiple-3 (zero? (mod x 3))
              multiple-5 (zero? (mod x 5))]
        :when (or multiple-3 multiple-5)]
   x))

(def sum
  (reduce + multiples))

(println sum)


;; let us editorialize... less experienced readers should know this
;; code is *unclean*, not merely for lack of expertise, but also,
;; true functional programmers will encourage you to dispense
;; with *naming things* -- learn how to visualize your data
;; and you will stop needing to println, just *believe*

;; Result (sum):
;; /opt/euler/clojure$ lein exec pe_001_01.clj 9
;; 23
;; /opt/euler/clojure$ lein exec pe_001_01.clj 999
;; 233168
;; /opt/euler/clojure$ lein exec pe_001_01.clj 999999
;; 233333166668

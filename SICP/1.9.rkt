;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (plus a b)
  (if (= a 0)
      b
      (inc (plus (dec a) b))))
(define (inc x)
  (+ x 1))
(define (dec x)
  (- x 1))
(plus 3 4)
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (sum a b c)
  (sum-of-squares (max a b)
                  (max (min a b) c)))
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))
(define (square x)
  (* x x))
(sum 3 4 5);
;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.8|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (subtriplicate-iter guess x)
  (if (good-enough? guess x)
      guess
      (subtriplicate-iter (improve guess x) x)))
(define (improve guess x)
  (average (* 2 guess) (/ x (square guess))))
(define (average x y)
  (/ (+ x y) 3))
(define (good-enough? guess x)
  (< (abs (/ (- (improve guess x) guess) guess)) 0.0000000001))
(define (square guess)
  (* guess guess))
(define (subtriplicate x)
  (subtriplicate-iter 1.0 x))
(subtriplicate 8)
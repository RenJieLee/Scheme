;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.2.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (is-between-3-7 n)
  (and (< 3 n) (< n 7)))
(define (is-over-3-and-less-7 n)
  (and (<= 3 n) (<= n 7)))
(define (is-over-3-and-less-9 n)
  (and (<= 3 n) (<= n 9)))
(define (is-between-1-3-or-between-9-11 n)
  (or (and (< 1 n) (< n 3)) (and (< 9 n) (< n 11))))
(define (is-less-1-and-over-3 n)
  (or (< n 1) (> n 3)))

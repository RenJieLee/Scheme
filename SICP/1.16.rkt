;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.16|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (fast-expt b n)
  (fast-expt-iter b n 1))
(define (fast-expt-iter b n product)
  (if (= n 0)
      product
      (if (even? n)
          (fast-expt-iter (square b) (/ n 2) product)
          (fast-expt-iter b (- n 1) (* product b)))))
(define (square x)
  (* x x))
(fast-expt 3 4)
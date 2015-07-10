;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (sum a b c)
  (cond ((and (> a b) (> a c))
         (+ a (max b c)))
        ((and (> b a) (> b c))
         (+ b (max a c)))
        ((and (> c b) (> c a))
         (+ c (max b a)))))
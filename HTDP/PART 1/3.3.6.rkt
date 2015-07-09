;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (Fahrenheit->Celsius f)
  (* 5 (/ (- f 32) 9)))
(define (Celsius->Fahrenheit c)
  (+ (* 9/5 c)
     32))
(define (I f)
  (Celsius->Fahrenheit 
   (Fahrenheit->Celsius f)))
(I 40)
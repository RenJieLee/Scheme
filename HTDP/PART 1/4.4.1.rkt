;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (interest amount)
  (cond
    [(<= amount 1000) (* .040 amount)]
    [(<= amount 5000) (+ (* 1000 0.040) (* (- amount 1000) .045))]
    [else (+ (* 1000 .040)
             (* 4000 .045)
             (* (- amount 10000) .055))]))
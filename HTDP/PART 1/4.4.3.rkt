;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (pay-back pay)
  (cond 
    [(<= pay 500) (* pay 0.0025)]
    [(<= pay 1500) (+ (* 500 0.0025)
                  (* (- pay 500) 0.005))]
    [(<= pay 2500) (+ (* 500 0.0025)
                      (* 1000 0.005)
                      (* (- pay 1500) 0.0075))]
    [else (+ (* 500 0.0025)
                      (* 1000 0.005)
                      (* 1000 0.0075)
                      (* (- pay 2500) 0.01))]))

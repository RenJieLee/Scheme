;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 4.4.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (tax amount)
  (cond
    [(<= amount 240) 0]
    [(<= amount 480) (* (- amount 240) 0.15)]
    [else (+ (* 240 0.15)
             (* (- amount 480) 0.28))]))
(define (wage h)
  (* 12 h))
(define (netpay h)
  (- (wage h) (tax (wage h))))
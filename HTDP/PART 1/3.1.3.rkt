;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.1.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (attendees ticket-prize)
  (+ (* (- 5.0 ticket-prize) 150) 120))
(attendees 5)
(attendees 4)
(attendees 3)
(define (cost ticket-prize)
  (+ (* 0.04 (attendees ticket-prize)) 180))
(define (revenue ticket-prize)
  (* (attendees ticket-prize) ticket-prize))
(define (profit ticket-prize)
  (- (revenue ticket-prize) (cost ticket-prize)))
(profit 2)
(profit 3)
(profit 4)
(profit 5)
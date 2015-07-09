;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 5.1.3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp")))))
(define (convert3 s t h)
  (+ (+ (* h 100) (* 10 t)) s))
(define (check-guess3 s t h target)
  (cond [(< (convert3 s t h) (remainder target 1000)) 'TooSmall]
        [(= (convert3 s t h) (remainder target 1000)) 'Perfect]
        [(> (convert3 s t h) (remainder target 1000)) 'TooLarge]))
(guess-with-gui-3 check-guess3)
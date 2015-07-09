;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 5.1.5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")))))
(define (check-color guess-1 guess-2 target-1 target-2)
  (cond
    [(and (symbol=? guess-1 target-1)
          (symbol=? guess-2 target-2)) 'Perfect]
    [(or (symbol=? guess-1 target-1)
          (symbol=? guess-2 target-2)) 'OneColorAtCorrectPosition]
    [(or (symbol=? guess-1 target-2)
          (symbol=? guess-2 target-1)) 'OneColorOccurs]
    [else 'NothingCorrect]))
(master check-color)
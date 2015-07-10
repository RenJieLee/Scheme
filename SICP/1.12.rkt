;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |1.12|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(define (pascal row col)
  (cond ((or (< row col)
             (< col 1)) 0)
        ((or (= col 1)
             (= col row)) 1)
        (else (+ (pascal (- row 1)
                         (- col 1))
                 (pascal (- row 1)
                         col)))))

(pascal 5 3)
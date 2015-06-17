;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define (area-cylinder r h)
  (* h (* 2 pi r)))
(define (area-circle r)
  (* pi r r))
(define (area-pipe r h t)
  (+ 
   (* h (* 2 pi (+ r t))) 
   (- 
    (* pi (+ r t) (+ r t))
    (* pi r r))))
(define (area-pipe2 r h t)
  (+ 
   (area-cylinder (+ r t) h)
   (- (area-circle (+ r t))
    (area-circle r))))
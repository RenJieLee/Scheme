;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 3.3.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")))))
(define in2cm 2.54)
(define ft2in 12)
(define yd2ft 3)
(define rd2yd (+ 5 1/2))
(define fl2rd 40)
(define ml2fl 8)

(define (inches->cm in)
  (* in2cm in))
(define (feet->inchs ft)
  (* ft2in ft))
(define (yards->feet yd)
  (* yd2ft yd))
(define (rods->yards rd)
  (* rd2yd rd))
(define (furlongs->rods fl)
  (* fl2rd fl))
(define (miles->furlongs ml)
  (* ml2fl ml))

(define (feet->cm ft)
  (inches->cm (feet->inchs ft)))
(define (yards->cm yd)
  (inches->cm (yards->feet (yards->feet yd))))
(define (rods->cm rd)
  (inches->cm (yards->feet (yards->feet (rods->yards rd)))))
(define (miles->cm ml)
  (inches->cm 
   (yards->feet 
    (yards->feet 
     (furlongs->rods (miles->furlongs ml))))))
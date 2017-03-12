;;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10;                             -*-
;;;; ------------------------------------------------------------------------------
;;;; File name: data.lsp
;;;;    System: LTRE
;;;;   Version: 1.0
;;;;    Author: Qiang Bi
;;;;   Created: March 8, 2017
;;;; ------------------------------------------------------------------------------

;data are in the following forms
; (rassert! (meetingTime catalog_num meetingDays startHr endHr startMin EndMin))
; (rassert! (prereq  catalog_num/topics prerequisite))
; (rassert! (prereqor  catalog_num/topics (prerequisite list)))
; (rassert! (satisfy catalog_num/topics equirement))
;;req are C*6, SB SDB AIB TB IB, D*6, P*2

;;pairwise nogood for each two requirement
(rassert! (pairwise-nogood SB SDB) :given)
(rassert! (pairwise-nogood SB AIB) :given)
(rassert! (pairwise-nogood SB TB) :given)
(rassert! (pairwise-nogood SB IB) :given)
(rassert! (pairwise-nogood SB D) :given)
(rassert! (pairwise-nogood SB P) :given)
(rassert! (pairwise-nogood SB C) :given)

(rassert! (pairwise-nogood AIB SDB) :given)
(rassert! (pairwise-nogood AIB TB) :given)
(rassert! (pairwise-nogood AIB IB) :given)
(rassert! (pairwise-nogood AIB D) :given)
(rassert! (pairwise-nogood AIB P) :given)
(rassert! (pairwise-nogood AIB C) :given)

(rassert! (pairwise-nogood TB SDB) :given)
(rassert! (pairwise-nogood TB IB) :given)
(rassert! (pairwise-nogood TB D) :given)
(rassert! (pairwise-nogood TB P) :given)
(rassert! (pairwise-nogood TB C) :given)

(rassert! (pairwise-nogood SDB IB) :given)
(rassert! (pairwise-nogood SDB D) :given)
(rassert! (pairwise-nogood SDB P) :given)
(rassert! (pairwise-nogood SDB C) :given)

(rassert! (pairwise-nogood IB D) :given)
(rassert! (pairwise-nogood IB P) :given)
(rassert! (pairwise-nogood IB C) :given)

(rassert! (pairwise-nogood D P) :given)
(rassert! (pairwise-nogood C P) :given)
(rassert! (pairwise-nogood C D) :given)

;(rassert! (pairwise-nogood C1 C2) :given)
;(rassert! (pairwise-nogood C1 C3) :given)
;(rassert! (pairwise-nogood C1 C4) :given)
;(rassert! (pairwise-nogood C1 C5) :given)
;(rassert! (pairwise-nogood C1 C6) :given)

;(rassert! (pairwise-nogood C2 C3) :given)
;(rassert! (pairwise-nogood C2 C4) :given)
;(rassert! (pairwise-nogood C2 C5) :given)
;(rassert! (pairwise-nogood C2 C6) :given)

;(rassert! (pairwise-nogood C3 C4) :given)
;(rassert! (pairwise-nogood C3 C5) :given)
;(rassert! (pairwise-nogood C3 C6) :given)

;(rassert! (pairwise-nogood C4 C5) :given)
;(rassert! (pairwise-nogood C4 C6) :given)

;(rassert! (pairwise-nogood C5 C6) :given)

;;;course data

(rassert! (meetingTime eecs111 TTH 14 00 15 20) :given)
(rassert! (nosatisfy eecs111 SB) :given)
(rassert! (nosatisfy eecs111 SDB) :given)
(rassert! (nosatisfy eecs111 AIB) :given)
(rassert! (nosatisfy eecs111 TB) :given)
(rassert! (nosatisfy eecs111 IB) :given)
(rassert! (nosatisfy eecs111 D) :given)
(rassert! (nosatisfy eecs111 P) :given)
(rassert! (satisfy eecs111 C1) :given)
(rassert! (nosatisfy eecs111 C2) :given)
(rassert! (nosatisfy eecs111 C3) :given)
(rassert! (nosatisfy eecs111 C4) :given)
(rassert! (nosatisfy eecs111 C5) :given)
(rassert! (nosatisfy eecs111 C6) :given)

(rassert! (meetingTime eecs211 MWF 13 00 13 50) :given)
(rassert! (prereq eecs211 eecs111) :given)
(rassert! (nosatisfy eecs211 SB) :given)
(rassert! (nosatisfy eecs211 SDB) :given)
(rassert! (nosatisfy eecs211 AIB) :given)
(rassert! (nosatisfy eecs211 TB) :given)
(rassert! (nosatisfy eecs211 IB) :given)
(rassert! (nosatisfy eecs211 D) :given)
(rassert! (nosatisfy eecs211 P) :given)
(rassert! (satisfy eecs211 C2) :given)
(rassert! (nosatisfy eecs211 C1) :given)
(rassert! (nosatisfy eecs211 C3) :given)
(rassert! (nosatisfy eecs211 C4) :given)
(rassert! (nosatisfy eecs211 C5) :given)
(rassert! (nosatisfy eecs211 C6) :given)

(rassert! (meetingTime eecs212 MWF 15 00 15 50) :given)
(rassert! (prereqor eecs212 (eecs111 eecs110)) :given)
(rassert! (nosatisfy eecs212 SB) :given)
(rassert! (nosatisfy eecs212 SDB) :given)
(rassert! (nosatisfy eecs212 AIB) :given)
(rassert! (nosatisfy eecs212 TB) :given)
(rassert! (nosatisfy eecs212 IB) :given)
(rassert! (nosatisfy eecs212 D) :given)
(rassert! (nosatisfy eecs212 P) :given)
(rassert! (satisfy eecs212 C3) :given)
(rassert! (nosatisfy eecs212 C1) :given)
(rassert! (nosatisfy eecs212 C2) :given)
(rassert! (nosatisfy eecs212 C4) :given)
(rassert! (nosatisfy eecs212 C5) :given)
(rassert! (nosatisfy eecs212 C6) :given)

(rassert! (meetingTime eecs213 TTH 14 00 15 20) :given)
(rassert! (prereq eecs213 eecs211) :given)
(rassert! (nosatisfy eecs213 SB) :given)
(rassert! (nosatisfy eecs213 SDB) :given)
(rassert! (nosatisfy eecs213 AIB) :given)
(rassert! (nosatisfy eecs213 TB) :given)
(rassert! (nosatisfy eecs213 IB) :given)
(rassert! (nosatisfy eecs213 D) :given)
(rassert! (nosatisfy eecs213 P) :given)
(rassert! (satisfy eecs213 C4) :given)
(rassert! (nosatisfy eecs213 C1) :given)
(rassert! (nosatisfy eecs213 C2) :given)
(rassert! (nosatisfy eecs213 C3) :given)
(rassert! (nosatisfy eecs213 C5) :given)
(rassert! (nosatisfy eecs213 C6) :given)

(rassert! (meetingTime eecs214 MWF 13 00 13 50) :given)
(rassert! (prereq eecs214 eecs211) :given)
(rassert! (nosatisfy eecs214 SB) :given)
(rassert! (nosatisfy eecs214 SDB) :given)
(rassert! (nosatisfy eecs214 AIB) :given)
(rassert! (nosatisfy eecs214 TB) :given)
(rassert! (nosatisfy eecs214 IB) :given)
(rassert! (nosatisfy eecs214 D) :given)
(rassert! (nosatisfy eecs214 P) :given)
(rassert! (satisfy eecs214 C5) :given)
(rassert! (nosatisfy eecs214 C1) :given)
(rassert! (nosatisfy eecs214 C2) :given)
(rassert! (nosatisfy eecs214 C3) :given)
(rassert! (nosatisfy eecs214 C4) :given)
(rassert! (nosatisfy eecs214 C6) :given)

(rassert! (meetingTime eecs303 TTH 15 30 16 50) :given)
(rassert! (prereq eecs303 eecs203) :given)
(rassert! (satisfy eecs303 SB) :given)
(rassert! (satisfy eecs303 D) :given)
(rassert! (nosatisfy eecs303 SDB) :given)
(rassert! (nosatisfy eecs303 AIB) :given)
(rassert! (nosatisfy eecs303 TB) :given)
(rassert! (nosatisfy eecs303 IB) :given)
(rassert! (nosatisfy eecs303 P) :given)
(rassert! (nosatisfy eecs303 C4) :given)
(rassert! (nosatisfy eecs303 C1) :given)
(rassert! (nosatisfy eecs303 C2) :given)
(rassert! (nosatisfy eecs303 C3) :given)
(rassert! (nosatisfy eecs303 C5) :given)
(rassert! (nosatisfy eecs303 C6) :given)

(rassert! (meetingTime eecs322 MWF 14 00 15 20) :given)
(rassert! (prereq eecs322 eecs321) :given)
(rassert! (satisfy eecs322 SB) :given)
(rassert! (satisfy eecs322 P) :given)
(rassert! (satisfy eecs322 D) :given)
(rassert! (nosatisfy eecs322 SDB) :given)
(rassert! (nosatisfy eecs322 AIB) :given)
(rassert! (nosatisfy eecs322 TB) :given)
(rassert! (nosatisfy eecs322 IB) :given)
(rassert! (nosatisfy eecs322 C4) :given)
(rassert! (nosatisfy eecs322 C1) :given)
(rassert! (nosatisfy eecs322 C2) :given)
(rassert! (nosatisfy eecs322 C3) :given)
(rassert! (nosatisfy eecs322 C5) :given)
(rassert! (nosatisfy eecs322 C6) :given)

(rassert! (meetingTime eecs336 TTH 15 30 16 50) :given)
(rassert! (:and (prereq eecs336 eecs212) (prereq eecs336 eecs214)) :given)
(rassert! (satisfy eecs336 TB) :given)
(rassert! (satisfy eecs336 P) :given)
(rassert! (satisfy eecs336 D) :given)
(rassert! (nosatisfy eecs336 SB) :given)
(rassert! (nosatisfy eecs336 SDB) :given)
(rassert! (nosatisfy eecs336 AIB) :given)
(rassert! (nosatisfy eecs336 IB) :given)
(rassert! (nosatisfy eecs336 C4) :given)
(rassert! (nosatisfy eecs336 C1) :given)
(rassert! (nosatisfy eecs336 C2) :given)
(rassert! (nosatisfy eecs336 C3) :given)
(rassert! (nosatisfy eecs336 C5) :given)
(rassert! (nosatisfy eecs336 C6) :given)


(rassert! (meetingTime eecs339 TTH 11 00 12 20) :given)
(rassert! (prereq eecs339 eecs214) :given)
(rassert! (prereqor eecs339 (eecs213 eecs205)) :given)
(rassert! (satisfy eecs339 SB) :given)
(rassert! (satisfy eecs339 P) :given)
(rassert! (satisfy eecs339 D) :given)
(rassert! (nosatisfy eecs339 TB) :given)
(rassert! (nosatisfy eecs339 SDB) :given)
(rassert! (nosatisfy eecs339 AIB) :given)
(rassert! (nosatisfy eecs339 IB) :given)
(rassert! (nosatisfy eecs339 C4) :given)
(rassert! (nosatisfy eecs339 C1) :given)
(rassert! (nosatisfy eecs339 C2) :given)
(rassert! (nosatisfy eecs339 C3) :given)
(rassert! (nosatisfy eecs339 C5) :given)
(rassert! (nosatisfy eecs339 C6) :given)

(rassert! (meetingTime eecs345 MWF 11 00 12 20) :given)
(rassert! (:and (prereq eecs345 eecs340) (prereq eecs345 eecs343)) :given)
(rassert! (satisfy eecs345 SB) :given)
(rassert! (satisfy eecs345 P) :given)
(rassert! (satisfy eecs345 D) :given)
(rassert! (nosatisfy eecs345 SDB) :given)
(rassert! (nosatisfy eecs345 AIB) :given)
(rassert! (nosatisfy eecs345 TB) :given)
(rassert! (nosatisfy eecs345 IB) :given)
(rassert! (nosatisfy eecs345 C4) :given)
(rassert! (nosatisfy eecs345 C1) :given)
(rassert! (nosatisfy eecs345 C2) :given)
(rassert! (nosatisfy eecs345 C3) :given)
(rassert! (nosatisfy eecs345 C5) :given)
(rassert! (nosatisfy eecs345 C6) :given)

(rassert! (meetingTime eecs346 MWF 10 00 10 50) :given)
(rassert! (:and (prereq eecs346 eecs205)
                (prereq eecs346 eecs203)) :given)
(rassert! (satisfy eecs346 SB) :given)
(rassert! (satisfy eecs346 D) :given)
(rassert! (nosatisfy eecs346 SDB) :given)
(rassert! (nosatisfy eecs346 AIB) :given)
(rassert! (nosatisfy eecs346 TB) :given)
(rassert! (nosatisfy eecs346 IB) :given)
(rassert! (nosatisfy eecs346 P) :given)
(rassert! (nosatisfy eecs346 C4) :given)
(rassert! (nosatisfy eecs346 C1) :given)
(rassert! (nosatisfy eecs346 C2) :given)
(rassert! (nosatisfy eecs346 C3) :given)
(rassert! (nosatisfy eecs346 C5) :given)
(rassert! (nosatisfy eecs346 C6) :given)

(rassert! (eecs348 meetingTime TTH 12 30 13 50) :given)
(rassert! (:and (prereq eecs348 eecs111)
                (prereq eecs348 eecs214)) :given)
(rassert! (satisfy eecs348 AIB) :given)
(rassert! (satisfy eecs348 D) :given)
(rassert! (nosatisfy eecs348 TB) :given)
(rassert! (nosatisfy eecs348 SDB) :given)
(rassert! (nosatisfy eecs348 SB) :given)
(rassert! (nosatisfy eecs348 IB) :given)
(rassert! (nosatisfy eecs348 P) :given)
(rassert! (nosatisfy eecs348 C4) :given)
(rassert! (nosatisfy eecs348 C1) :given)
(rassert! (nosatisfy eecs348 C2) :given)
(rassert! (nosatisfy eecs348 C3) :given)
(rassert! (nosatisfy eecs348 C5) :given)
(rassert! (nosatisfy eecs348 C6) :given)

(rassert! (meetingTime eecs349 MWF 13 00 13 50) :given)
(rassert! (prereqor eecs349 (eecs325 eecs214)) :given)
(rassert! (satisfy eecs349 AIB) :given)
(rassert! (satisfy eecs349 D) :given)
(rassert! (nosatisfy eecs349 SB) :given)
(rassert! (nosatisfy eecs349 SDB) :given)
(rassert! (nosatisfy eecs349 TB) :given)
(rassert! (nosatisfy eecs349 IB) :given)
(rassert! (nosatisfy eecs349 P) :given)
(rassert! (nosatisfy eecs349 C4) :given)
(rassert! (nosatisfy eecs349 C1) :given)
(rassert! (nosatisfy eecs349 C2) :given)
(rassert! (nosatisfy eecs349 C3) :given)
(rassert! (nosatisfy eecs349 C5) :given)
(rassert! (nosatisfy eecs349 C6) :given)

(rassert! (meetingTime eecs370 TTH 14 00 15 50) :given)
(rassert! (prereq eecs370 eecs214) :given)
(rassert! (prereqor eecs370 (eecs322 eecs343 eecs348 eecs351)) :given)
(rassert! (satisfy eecs370 IB) :given)
(rassert! (satisfy eecs370 P) :given)
(rassert! (satisfy eecs370 D) :given)
(rassert! (nosatisfy eecs370 SB) :given)
(rassert! (nosatisfy eecs370 SDB) :given)
(rassert! (nosatisfy eecs370 AIB) :given)
(rassert! (nosatisfy eecs370 TB) :given)
(rassert! (nosatisfy eecs370 C4) :given)
(rassert! (nosatisfy eecs370 C1) :given)
(rassert! (nosatisfy eecs370 C2) :given)
(rassert! (nosatisfy eecs370 C3) :given)
(rassert! (nosatisfy eecs370 C5) :given)
(rassert! (nosatisfy eecs370 C6) :given)

(rassert! (meetingTime eecs394 TTH 11 00 12 20) :given)
(rassert! (satisfy eecs394 SDB) :given)
(rassert! (satisfy eecs394 P) :given)
(rassert! (satisfy eecs394 D) :given)
(rassert! (nosatisfy eecs394 SB) :given)
(rassert! (nosatisfy eecs394 AIB) :given)
(rassert! (nosatisfy eecs394 TB) :given)
(rassert! (nosatisfy eecs394 IB) :given)
(rassert! (nosatisfy eecs394 C4) :given)
(rassert! (nosatisfy eecs394 C1) :given)
(rassert! (nosatisfy eecs394 C2) :given)
(rassert! (nosatisfy eecs394 C3) :given)
(rassert! (nosatisfy eecs394 C5) :given)
(rassert! (nosatisfy eecs394 C6) :given)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EECS 395 courses;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(rassert! (meetingTime (eecs395 Machine Learning Foundations Apps & Algorithms) MWF 10 00 10 50) :given)
(rassert! (satisfy (eecs395 Machine Learning Foundations Apps & Algorithms) AIB) :given)
(rassert! (satisfy (eecs395 Machine Learning Foundations Apps & Algorithms) D) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) SB) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) SDB) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) IB) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) TB) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) P) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C1) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C2) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C3) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C4) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C5) :given)
(rassert! (nosatisfy (eecs395 Machine Learning Foundations Apps & Algorithms) C6) :given)

(rassert! (meetingTime (Requirements Gathering & Decision-Support Tool Dev) TTH 18 00 20 50) :given)
(rassert! (prereqor (Requirements Gathering & Decision-Support Tool Dev)  (eecs337 eecs338 eecs348 eecs344)) :given)
(rassert! (satisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) D) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) P) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) SB) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) SDB) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) IB) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) TB) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) AIB) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C1) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C2) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C3) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C4) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C5) :given)
(rassert! (nosatisfy (eecs395 Requirements Gathering & Decision-Support Tool Dev) C6) :given)


(rassert! (meetingTime (eecs395 Innovation Journalism and Technology) MWF 18 00 21 00) :given)
(rassert! (satisfy (eecs395 Innovation Journalism and Technology) P) :given)
(rassert! (satisfy (eecs395 Innovation Journalism and Technology) IB) :given)
(rassert! (satisfy (eecs395 Innovation Journalism and Technology) D) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) SDB) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) TB) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) AIB) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C1) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C2) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C3) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C4) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C5) :given)
(rassert! (nosatisfy (eecs395 Innovation Journalism and Technology) C6) :given)

(rassert! (meetingTime (eecs395 Software Construction) TTH 11 00 12 20) :given)
(rassert! (:and (prereq (eecs395 Software Construction) eecs214)
                (prereq (eecs395 Software Construction) eecs111)) :given)
(rassert! (satisfy (eecs395 Software Construction) P) :given)
(rassert! (satisfy (eecs395 Software Construction) SDB) :given)
(rassert! (satisfy (eecs395 Software Construction) D) :given)
(rassert! (nosatisfy (eecs395 Software Construction) IB) :given)
(rassert! (nosatisfy (eecs395 Software Construction) SB) :given)
(rassert! (nosatisfy (eecs395 Software Construction) TB) :given)
(rassert! (nosatisfy (eecs395 Software Construction) AIB) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C1) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C2) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C3) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C4) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C5) :given)
(rassert! (nosatisfy (eecs395 Software Construction) C6) :given)

(rassert! (meetingTime (eecs395 Comp. Phototgraphy Seminary) MWF 14 00 16 50) :given)
(rassert! (satisfy (eecs395 Comp. Phototgraphy Seminary) P) :given)
(rassert! (satisfy (eecs395 Comp. Phototgraphy Seminary) IB) :given)
(rassert! (satisfy (eecs395 Comp. Phototgraphy Seminary) D) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) SDB) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) SB) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) TB) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) AIB) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C1) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C2) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C3) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C4) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C5) :given)
(rassert! (nosatisfy (eecs395 Comp. Phototgraphy Seminary) C6) :given)

(rassert! (meetingTime (eecs395 Intermediate Computer Graphics) TTH 09 30 10 50) :given)
(rassert! (:and (prereq (eecs395 Intermediate Computer Graphics) eecs214)
                (prereq (eecs395 Intermediate Computer Graphics) eecs351)) :given)
(rassert! (satisfy (eecs395 Intermediate Computer Graphics) P) :given)
(rassert! (satisfy (eecs395 Intermediate Computer Graphics) D) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) SDB) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) SB) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) TB) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) AIB) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) IB) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C1) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C2) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C3) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C4) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C5) :given)
(rassert! (nosatisfy (eecs395 Intermediate Computer Graphics) C6) :given)

(rassert! (meetingTime (eecs395 Embedded Systems) (Tu) 15 00 18 00) :given)
(rassert! (satisfy (eecs395 Embedded Systems) SB) :given)
(rassert! (satisfy (eecs395 Embedded Systems) D) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) SDB) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) P) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) TB) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) AIB) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) IB) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C1) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C2) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C3) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C4) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C5) :given)
(rassert! (nosatisfy (eecs395 Embedded Systems) C6) :given)


;;;;;;;;;;;;;;;;;;;;;;;;satisfy for courses not offered;;;;;;;;;;;;;;;;;;;;;

(rassert! (nosatisfy eecs101 C6) :given)
(rassert! (satisfy eecs321 (:or SB D)) :given)
(rassert! (satisfy eecs325 (:or AIB D)) :given)
(rassert! (satisfy eecs330 (:or P IB D)) :given)
(rassert! (satisfy eecs332 (:or IB D)) :given)
(rassert! (satisfy eecs335 (:or TB D)) :given)
(rassert! (satisfy eecs337 (:or P AIB D)) :given)
(rassert! (satisfy eecs338 (:or P SDB D)) :given)
(rassert! (satisfy eecs340 (:or P SB D)) :given)
(rassert! (satisfy eecs343 (:or P SB D)) :given)
(rassert! (satisfy eecs344 (:or P AIB D)) :given)
(rassert! (satisfy eecs350 (:or P SB D)) :given)
(rassert! (satisfy eecs351 (:or P IB D)) :given)
(rassert! (satisfy eecs352 (:or P IB D)) :given)
(rassert! (satisfy eecs354 (:or P SB D)) :given)
(rassert! (satisfy eecs369 (:or SB D)) :given)
(rassert! (satisfy eecs371 (:or P AIB D)) :given)
(rassert! (satisfy eecs372 (:or AIB D)) :given)
(rassert! (satisfy (eecs395 Game Design and Developmenet) (:or IB D)) :given)
(rassert! (satisfy (eecs395 Intro Computational Photography) (:or IB D)) :given)
(rassert! (satisfy (eecs395 Data Science) (:or SB D)) :given)
(rassert! (satisfy (eecs395 Game Development Studio) (:or P IB SDB D)) :given)
(rassert! (satisfy (eecs395 Geospatial Vision and Visualization) (:or P IB D)) :given)
(rassert! (satisfy (eecs395 Digital Forensics and Incident Response) (:or P SB D)) :given)

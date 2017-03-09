;data are in the following forms
; (rassert! (catalog_num  (title) (topic))) only for eecs395
; (rassert! (catalog_num meetingTime (meetingDays) startHr endHr startMin EndMin))
; (rassert! (catalog_num/topics  prereq prerequisite))
; (rassert! (catalog_num/topics satisfy requirement))


(rassert! (eecs111 meetingTime (Tu Th ) 14 00 15 20) :given)
(rassert! (eecs111 prereq None) :given)
(rassert! (eecs111 satisfy C) :given)

(rassert! (eecs211 meetingTime (Mo We Fr) 13 00 13 50) :given)
(rassert! (eecs211 eecs211 eecs111) :given)
(rassert! (eecs211 satisfy C) :given)

(rassert! (eecs212 meetingTime (Mo We Fr) 15 00 15 50) :given)
(rassert! (eecs212 prereq (:or eecs111 eecs110)) :given)
(rassert! (eecs212 satisfy C) :given)

(rassert! (eecs213 meetingTime (Tu Th) 14 00 15 20) :given)
(rassert! (eecs213 prereq eecs211) :given)
(rassert! (eecs213 satisfy C) :given)

(rassert! (eecs214 meetingTime (Mo We Fr) 13 00 13 50) :given)
(rassert! (eecs214 prereq eecs211) :given)
(rassert! (eecs214 satisfy C) :given)

(rassert! (eecs303 meetingTime (Tu Th) 15 30 16 50) :given)
(rassert! (eecs303 prereq eecs203) :given)
(rassert! (eecs303 satisfy (:or SB D)) :given)

(rassert! (eecs322 meetingTime (Mo We) 14 00 15 20) :given)
(rassert! (eecs322 prereq eecs321) :given)
(rassert! (eecs322 satisfy (:or SB P D)) :given)

(rassert! (eecs336 meetingTime (Tu Th ) 15 30 16 50) :given)
(rassert! (eecs336 prereq (:and eecs212 eecs214)) :given)
(rassert! (eecs336 satisfy (:or TB P D)) :given)

(rassert! (eecs339 meetingTime (Tu Th) 11 00 12 20) :given)
(rassert! (eecs339 prereq (:and eecs214 (:or eecs213 eecs205))) :given)
(rassert! (eecs339 satisfy (:or SB P D)) :given)

(rassert! (eecs345 meetingTime (Mo We ) 11 00 12 20) :given)
(rassert! (eecs345 prereq (:and eecs340 eecs343)) :given)
(rassert! (eecs345 satisfy (:or SB P D)) :given)

(rassert! (eecs346 meetingTime (Mo Tu We Fr ) 10 00 10 50) :given)
(rassert! (eecs346 prereq (:and eecs205 eecs203)) :given)
(rassert! (eecs346 satisfy (:or SB D)) :given)

(rassert! (eecs348 meetingTime (Tu Th) 12 30 13 50) :given)
(rassert! (eecs348 prereq (:and eecs111 eecs214)) :given)
(rassert! (eecs348 satisfy (:or AIB D)) :given)

(rassert! (eecs349 meetingTime (Mo We Fr) 13 00 13 50) :given)
(rassert! (eecs349 prereq (:or eecs214 eecs325)) :given)
(rassert! (eecs349 satisfy (:or AIB D)) :given)

(rassert! (eecs370 meetingTime (Tu Th) 14 00 15 50) :given)
(rassert! (eecs370 prereq (:and eecs214 (:or eecs322 eecs343 eecs348 eecs351))) :given)
(rassert! (eecs370 satisfy (:or IB P D)) :given)

(rassert! (eecs394 meetingTime (Tu Th) 11 00 12 20) :given)
(rassert! (eecs394 prereq None) :given)
(rassert! (eecs394 satisfy (:or P SDB D)) :given)

(rassert! ((eecs395 Machine Learning Foundations Apps & Algorithms) meetingTime (Mo We Fr) 10 00 10 50) :given)
(rassert! ((eecs395 Machine Learning Foundations Apps & Algorithms) prereq None) :given)
(rassert! ((eecs395 Machine Learning Foundations Apps & Algorithms) satisfy (:or AIB D)) :given)

(rassert! ((eecs395 Requirements Gathering & Decision-Support Tool Dev) meetingTime (Tu) 18 00 20 50) :given)
(rassert! ((eecs395 Requirements Gathering & Decision-Support Tool Dev) prereq (:or eecs337 eecs338 eecs348 eecs344)) :given)
(rassert! ((eecs395 Requirements Gathering & Decision-Support Tool Dev) satisfy D) :given)



;;;;;;;;;;;;;;;;;;;;;;;;;
;;;needs update
(rassert! (meetingTime eecs395 (Tu Th) 11 00 12 20) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Bioelectric Systems Modeling and Analysis)) :given)

(rassert! (meetingTime eecs395 (We) 18 00 21 00) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Innovation Journalism and Technology)) :given)
(rassert! (prereq (Innovation Journalism and Technology) None) :given)
(rassert! (satisfy (Innovation Journalism and Technology) (:or P IB D)) :given)

(rassert! (meetingTime eecs395 (Tu Th) 11 00 12 20) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Software Construction)) :given)
(rassert! (prereq (Software Construction) (:and eecs214 eecs111)) :given)
(rassert! (satisfy (Software Construction) (:or P SDB D)) :given)

(rassert! (meetingTime eecs395 (Mo) 14 00 16 50) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Comp. Phototgraphy Seminary)) :given)
(rassert! (prereq (Comp. Phototgraphy Seminary) None) :given)
(rassert! (satisfy (Comp. Phototgraphy Seminary) (:or P IB D)) :given)

(rassert! (meetingTime eecs395 (Tu Th) 09 30 10 50) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Intermediate Computer Graphics)) :given)
(rassert! (prereq (Intermediate Computer Graphics) (:and eecs214 351)) :given)
(rassert! (satisfy (Intermediate Computer Graphics) (:or P D)) :given)

(rassert! (meetingTime eecs395 (Tu Th) 12 30 13 50) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Introduction to Computational Linguistics)) :given)
(rassert! (meetingTime eecs395 (Tu Th) 11 00 12 20) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Adv Top Comp Architect)) :given)

(rassert! (meetingTime eecs395 (Tu) 15 00 18 00) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Embedded Systems)) :given)
(rassert! (prereq (Embedded Systems) None) :given)
(rassert! (satisfy (Embedded Systems) (:or SB D)) :given)

(rassert! (meetingTime eecs395 (We) 14 00 16 50) :given)
(rassert! (course eecs395 (Special Topics in Electrical Engineering and Computer Science) (Applied Mechatronics Quadrotor Design and Control)) :given)
(rassert! (meetingTime 398 (Tu Th) 13 00 14 15) :given)
(rassert! (course 398 (Electrical Engineering Design) (None)) :given)

;;now put in the new rule, all non-specified courses >= 300 level count as D
;not sure how to implement

;;also the requirement satisfied by other courses not implemented
(rassert! (eecs101 satisfy C) :given)
(rassert! (eecs321 satisfy (:or SB D)) :given)
(rassert! (eecs325 satisfy (:or AIB D)) :given)
(rassert! (eecs330 satisfy (:or P IB D)) :given)
(rassert! (eecs332 satisfy (:or IB D)) :given)
(rassert! (eecs335 satisfy (:or TB D)) :given)
(rassert! (eecs337 satisfy (:or P AIB D)) :given)
(rassert! (eecs338 satisfy (:or P SDB D)) :given)
(rassert! (eecs340 satisfy (:or P SB D)) :given)
(rassert! (eecs343 satisfy (:or P SB D)) :given)
(rassert! (eecs344 satisfy (:or P AIB D)) :given)
(rassert! (eecs350 satisfy (:or P SB D)) :given)
(rassert! (eecs351 satisfy (:or P IB D)) :given)
(rassert! (eecs352 satisfy (:or P IB D)) :given)
(rassert! (eecs354 satisfy (:or P SB D)) :given)
(rassert! (eecs369 satisfy (:or SB D)) :given)
(rassert! (eecs371 satisfy (:or P AIB D)) :given)
(rassert! (eecs372 satisfy (:or AIB D)) :given)
(rassert! ((eecs395 Game Design and Developmenet) satisfy (:or IB D)) :given)
(rassert! ((eecs395 Intro Computational Photography) satisfy (:or IB D)) :given)
(rassert! ((eecs395 Data Science) satisfy (:or SB D)) :given)
(rassert! ((eecs395 Game Development Studio) satisfy (:or P IB SDB D)) :given)
(rassert! ((eecs395 Geospatial Vision and Visualization) satisfy (:or P IB D)) :given)
(rassert! ((eecs395 Digital Forensics and Incident Response) satisfy (:or P SB D)) :given)

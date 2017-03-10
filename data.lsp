;data are in the following forms
; (rassert! (catalog_num  (title) (topic))) only for 395
; (rassert! (catalog_num meetingTime (meetingDays) startHr endHr startMin EndMin))
; (rassert! (catalog_num/topics  prereq prerequisite))
; (rassert! (catalog_num/topics satisfy requirement))
;;req are C*6, SB SDB AIB TB IB, D*3, P*2


;;pairwise nogood for each two requirement
(rassert! (pairwise-nogood SB SDB) :given)
(rassert! (pairwise-nogood SB AIB) :given)
(rassert! (pairwise-nogood SB TB) :given)
(rassert! (pairwise-nogood SB IB) :given)
(rassert! (pairwise-nogood SB D) :given)
(rassert! (pairwise-nogood SB P) :given)

(rassert! (pairwise-nogood AIB SDB) :given)
(rassert! (pairwise-nogood AIB TB) :given)
(rassert! (pairwise-nogood AIB IB) :given)
(rassert! (pairwise-nogood AIB D) :given)
(rassert! (pairwise-nogood AIB P) :given)

(rassert! (pairwise-nogood TB SDB) :given)
(rassert! (pairwise-nogood TB IB) :given)
(rassert! (pairwise-nogood TB D) :given)
(rassert! (pairwise-nogood TB P) :given)

(rassert! (pairwise-nogood SDB IB) :given)
(rassert! (pairwise-nogood SDB D) :given)
(rassert! (pairwise-nogood SDB P) :given)

(rassert! (pairwise-nogood IB D) :given)
(rassert! (pairwise-nogood IB P) :given)

;;;course data

(rassert! (meetingTime eecs111 (Tu Th ) 14 00 15 20) :given)
(rassert! (prereq eecs111 None) :given)
(rassert! (nosatisfy eecs111 SB) :given)
(rassert! (nosatisfy eecs111 SDB) :given)
(rassert! (nosatisfy eecs111 AIB) :given)
(rassert! (nosatisfy eecs111 TB) :given)
(rassert! (nosatisfy eecs111 IB) :given)
(rassert! (nosatisfy eecs111 D) :given)
(rassert! (nosatisfy eecs111 P) :given)

(rassert! (meetingTime eecs211 (Mo We Fr) 13 00 13 50) :given)
(rassert! (prereq eecs211 eecs111) :given)
(rassert! (satisfy eecs211 C) :given)
(rassert! (nosatisfy eecs211 SB) :given)
(rassert! (nosatisfy eecs211 SDB) :given)
(rassert! (nosatisfy eecs211 AIB) :given)
(rassert! (nosatisfy eecs211 TB) :given)
(rassert! (nosatisfy eecs211 IB) :given)
(rassert! (nosatisfy eecs211 D) :given)
(rassert! (nosatisfy eecs211 P) :given)

(rassert! (meetingTime eecs212 (Mo We Fr) 15 00 15 50) :given)
(rassert! (prereq eecs212 (:or eecs111 eecs110)) :given)
(rassert! (satisfy eecs212 C) :given)
(rassert! (nosatisfy eecs212 SB) :given)
(rassert! (nosatisfy eecs212 SDB) :given)
(rassert! (nosatisfy eecs212 AIB) :given)
(rassert! (nosatisfy eecs212 TB) :given)
(rassert! (nosatisfy eecs212 IB) :given)
(rassert! (nosatisfy eecs212 D) :given)
(rassert! (nosatisfy eecs212 P) :given)

(rassert! (meetingTime eecs213 (Tu Th) 14 00 15 20) :given)
(rassert! (prereq eecs213 eecs211) :given)
(rassert! (satisfy eecs213 C) :given)

(rassert! (meetingTime eecs214 (Mo We Fr) 13 00 13 50) :given)
(rassert! (prereq eecs214 eecs211) :given)
(rassert! (satisfy eecs214 C) :given)

(rassert! (meetingTime eecs303 (Tu Th) 15 30 16 50) :given)
(rassert! (prereq eecs303 eecs203) :given)
(rassert! (satisfy eecs214 (:or SB D)) :given)

(rassert! (meetingTime eecs322 (Mo We) 14 00 15 20) :given)
(rassert! (prereq eecs322 eecs321) :given)
(rassert! (satisfy eecs322 (:or SB P D)) :given)

(rassert! (meetingTime eecs336 (Tu Th ) 15 30 16 50) :given)
(rassert! (prereq eecs336 (:and eecs212 eecs214)) :given)
(rassert! (satisfy eecs336 (:or TB P D)) :given)
(rassert! (nosatisfy eecs336 SB) :given)
(rassert! (nosatisfy eecs336 SDB) :given)
(rassert! (nosatisfy eecs336 AIB) :given)
(rassert! (nosatisfy eecs336 IB) :given)
(rassert! (nosatisfy eecs336 C) :given)

(rassert! (meetingTime eecs339 (Tu Th) 11 00 12 20) :given)
(rassert! (prereq eecs339 (:and eecs214 (:or eecs213 eecs205))) :given)
(rassert! (satisfy eecs339 (:or SB P D)) :given)
(rassert! (nosatisfy eecs339 TB) :given)
(rassert! (nosatisfy eecs339 SDB) :given)
(rassert! (nosatisfy eecs339 AIB) :given)
(rassert! (nosatisfy eecs339 IB) :given)
(rassert! (nosatisfy eecs339 C) :given)


(rassert! (meetingTime eecs345 (Mo We ) 11 00 12 20) :given)
(rassert! (prereq eecs345 (:and eecs340 eecs343)) :given)
(rassert! (satisfy eecs345 (:or SB P D)) :given)

(rassert! (meetingTime eecs346 (Mo Tu We Fr ) 10 00 10 50) :given)
(rassert! (prereq eecs346 (:and eecs205 eecs203)) :given)
(rassert! (satisfy eecs346 (:or SB D)) :given)

(rassert! (eecs348 meetingTime (Tu Th) 12 30 13 50) :given)
(rassert! (eecs348 prereq (:and eecs111 eecs214)) :given)
(rassert! (eecs348 satisfy (:or AIB D)) :given)
(rassert! (nosatisfy eecs348 TB) :given)
(rassert! (nosatisfy eecs348 SDB) :given)
(rassert! (nosatisfy eecs348 SB) :given)
(rassert! (nosatisfy eecs348 IB) :given)
(rassert! (nosatisfy eecs348 C) :given)
(rassert! (nosatisfy eecs348 P) :given)

(rassert! (meetingTime 349 (Mo We Fr) 13 00 13 50) :given)
(rassert! (prereq 349 (:or eecs214 eecs325)) :given)
(rassert! (satisfy 349 (:or AIB D)) :given)

(rassert! (meetingTime eecs370 (Tu Th) 14 00 15 50) :given)
(rassert! (prereq eecs370 (:and eecs214 (:or eecs322 eecs343 eecs348 eecs351))) :given)
(rassert! (satisfy eecs370 (:or IB P D)) :given)

(rassert! (meetingTime eecs394 (Tu Th) 11 00 12 20) :given)
(rassert! (prereq eecs394 None) :given)
(rassert! (satisfy eecs394 (:or P SDB D)) :given)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(rassert! (meetingTime 395 (Mo We Fr) 10 00 10 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Machine Learning Foundations Apps & Algorithms)) :given)
(rassert! (prereq (Machine Learning Foundations Apps & Algorithms) None) :given)
(rassert! (satisfy (Machine Learning Foundations Apps & Algorithms) (:or AIB D)) :given)

(rassert! (meetingTime 395 (Tu) 18 00 20 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Requirements Gathering & Decision-Support Tool Dev)) :given)
(rassert! (prereq 395 (:or 337 338 348 344)) :given)
(rassert! (satisfy 395 D) :given)

(rassert! (meetingTime 395 (Tu Th) 11 00 12 20) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Bioelectric Systems Modeling and Analysis)) :given)

(rassert! (meetingTime 395 (We) 18 00 21 00) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Innovation Journalism and Technology)) :given)
(rassert! (prereq (Innovation Journalism and Technology) None) :given)
(rassert! (satisfy (Innovation Journalism and Technology) (:or P IB D)) :given)

(rassert! (meetingTime 395 (Tu Th) 11 00 12 20) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Software Construction)) :given)
(rassert! (prereq (Software Construction) (:and eecs214 eecs111)) :given)
(rassert! (satisfy (Software Construction) (:or P SDB D)) :given)

(rassert! (meetingTime 395 (Mo) 14 00 16 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Comp. Phototgraphy Seminary)) :given)
(rassert! (prereq (Comp. Phototgraphy Seminary) None) :given)
(rassert! (satisfy (Comp. Phototgraphy Seminary) (:or P IB D)) :given)

(rassert! (meetingTime 395 (Tu Th) 09 30 10 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Intermediate Computer Graphics)) :given)
(rassert! (prereq (Intermediate Computer Graphics) (:and eecs214 351)) :given)
(rassert! (satisfy (Intermediate Computer Graphics) (:or P D)) :given)

(rassert! (meetingTime 395 (Tu Th) 12 30 13 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Introduction to Computational Linguistics)) :given)
(rassert! (meetingTime 395 (Tu Th) 11 00 12 20) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Adv Top Comp Architect)) :given)

(rassert! (meetingTime 395 (Tu) 15 00 18 00) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Embedded Systems)) :given)
(rassert! (prereq (Embedded Systems) None) :given)
(rassert! (satisfy (Embedded Systems) (:or SB D)) :given)

(rassert! (meetingTime 395 (We) 14 00 16 50) :given)
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Applied Mechatronics Quadrotor Design and Control)) :given)
(rassert! (meetingTime 398 (Tu Th) 13 00 14 15) :given)
(rassert! (course 398 (Electrical Engineering Design) (None)) :given)

;;now put in the new rule, all non-specified courses >= 300 level count as D
;not sure how to implement

;;also the requirement satisfied by other courses not implemented
(rassert! (satisfy 101 C) :given)
(rassert! (satisfy eecs321 (:or SB D)) :given)
(rassert! (satisfy 325 (:or AIB D)) :given)
(rassert! (satisfy 330 (:or P IB D)) :given)
(rassert! (satisfy eecs332 (:or IB D)) :given)
(rassert! (satisfy 335 (:or TB D)) :given)
(rassert! (satisfy 337 (:or P AIB D)) :given)
(rassert! (satisfy 338 (:or P SDB D)) :given)
(rassert! (satisfy eecs340 (:or P SB D)) :given)
(rassert! (satisfy eecs343 (:or P SB D)) :given)
(rassert! (satisfy 344 (:or P AIB D)) :given)
(rassert! (satisfy 350 (:or P SB D)) :given)
(rassert! (satisfy 351 (:or P IB D)) :given)
(rassert! (satisfy 352 (:or P IB D)) :given)
(rassert! (satisfy 354 (:or P SB D)) :given)
(rassert! (satisfy 369 (:or SB D)) :given)
(rassert! (satisfy 371 (:or P AIB D)) :given)
(rassert! (satisfy 372 (:or AIB D)) :given)
(rassert! (satisfy (Game Design and Developmenet) (:or IB D)) :given)
(rassert! (satisfy (Intro Computational Photography) (:or IB D)) :given)
(rassert! (satisfy (Data Science) (:or SB D)) :given)
(rassert! (satisfy (Game Development Studio) (:or P IB SDB D)) :given)
(rassert! (satisfy (Geospatial Vision and Visualization) (:or P IB D)) :given)
(rassert! (satisfy (Digital Forensics and Incident Response) (:or P SB D)) :given)

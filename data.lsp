;data are in the following forms
; (rassert! (course catalog_num  (title) (topic)))
; (rassert! (meetingTime catalog_num  (meetingDays) startHr endHr startMin EndMin))
; (rassert! (prereq catalog_num/topics  prerequisite))
; (rassert! (satisfy catalog_num/topics  requirement))


(rassert! (meetingTime 111 (Tu Th ) 14 00 15 20))
(rassert! (course 111 (Fundamentals of Computer Programming) (None)))
(rassert! (prereq 111 None))
(rassert! (satisfy 111 C))

(rassert! (meetingTime 211 (Mo We Fr ) 13 00 13 50))
(rassert! (course 211 (Fundamentals of Computer Programming II) (None)))
(rassert! (prereq 211 111))
(rassert! (satisfy 211 C))

(rassert! (meetingTime 212 (Mo We Fr ) 15 00 15 50))
(rassert! (course 212 (Mathematical Foundations of Comp Science) (None)))
(rassert! (prereq 212 (:or 111 110)))
(rassert! (satisfy 212 C))

(rassert! (meetingTime 213 (Tu Th ) 14 00 15 20))
(rassert! (course 213 (Introduction to Computer Systems) (None)))
(rassert! (prereq 213 211))
(rassert! (satisfy 213 C))

(rassert! (meetingTime 214 (Mo We Fr ) 13 00 13 50))
(rassert! (course 214 (Data Structures & Data Management) (None)))
(rassert! (prereq 214 211))
(rassert! (satisfy 214 C))

(rassert! (meetingTime 303 (Tu Th ) 15 30 16 50))
(rassert! (course 303 (Advanced Digital Design) (None)))
(rassert! (prereq 303 203))
(rassert! (satisfy 214 (:or SB D)))

(rassert! (meetingTime 322 (Mo We ) 14 00 15 20))
(rassert! (course 322 (Compiler  Construction) (None)))
(rassert! (prereq 322 321))
(rassert! (satisfy 322 (:or SB P D)))

(rassert! (meetingTime 336 (Tu Th ) 15 30 16 50))
(rassert! (course 336 (Design & Analysis of Algorithms) (None)))
(rassert! (prereq 336 (:and 212 214)))
(rassert! (satisfy 336 (:or SB P D)))

(rassert! (meetingTime 339 (Tu Th ) 11 00 12 20))
(rassert! (course 339 (Introduction to Database Systems) (None)))
(rassert! (prereq 339 (:and 214 (:or 213 205))))
(rassert! (satisfy 339 (:or SB P D)))

(rassert! (meetingTime 345 (Mo We ) 11 00 12 20))
(rassert! (course 345 (Distributed Systems) (None)))
(rassert! (prereq 345 (:and 340 343)))
(rassert! (satisfy 345 (:or SB P D)))

(rassert! (meetingTime 346 (Mo Tu We Fr ) 10 00 10 50))
(rassert! (course 346 (Microprocessor System Design) (None)))
(rassert! (prereq 346 (:and 205 203)))
(rassert! (satisfy 346 (:or SB D)))

(rassert! (meetingTime 348 (Tu Th ) 12 30 13 50))
(rassert! (course 348 (Introduction to Artificial Intelligence) (None)))
(rassert! (prereq 348 (:and 111 214)))
(rassert! (satisfy 348 (:or AIB D)))

(rassert! (meetingTime 349 (Mo We Fr ) 13 00 13 50))
(rassert! (course 349 (Machine Learning) (None)))
(rassert! (prereq 349 (:or 214 325)))
(rassert! (satisfy 349 (:or AIB D)))

(rassert! (meetingTime 370 (Tu Th ) 14 00 15 50))
(rassert! (course 370 (Computer Game Design) (None)))
(rassert! (prereq 370 (:and 214 (:or 322 343 348 351))))
(rassert! (satisfy 370 (:or IB P D)))

(rassert! (meetingTime 394 (Tu Th ) 11 00 12 20))
(rassert! (course 394 (Software Project Management & Development) (None)))
(rassert! (prereq 394 None)
(rassert! (satisfy 394 (:or P SDB D)))

(rassert! (meetingTime 395 (Mo We Fr ) 10 00 10 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Machine Learning: Foundations, Apps, & Algorithms)))
(rassert! (prereq (Machine Learning: Foundations, Apps, & Algorithms) None)
(rassert! (satisfy (Machine Learning: Foundations, Apps, & Algorithms) (:or AIB D)))

(rassert! (meetingTime 395 (Tu ) 18 00 20 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Requirements Gathering & Decision-Support Tool Dev)))
(rassert! (prereq 395 (:or 337 338 348 344)))
(rassert! (satisfy 395 D))

(rassert! (meetingTime 395 (Tu Th ) 11 00 12 20))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Bioelectric Systems Modeling and Analysis)))

(rassert! (meetingTime 395 (We ) 18 00 21 00))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Innovation Journalism and Technology)))
(rassert! (prereq (Innovation Journalism and Technology) None))
(rassert! (satisfy (Innovation Journalism and Technology) (:or P IB D)))

(rassert! (meetingTime 395 (Tu Th ) 11 00 12 20))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Software Construction)))
(rassert! (prereq (Software Construction) (:and 214 111)))
(rassert! (satisfy (Software Construction) (:or P SDB D)))

(rassert! (meetingTime 395 (Mo ) 14 00 16 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Comp. Phototgraphy Seminary)))
(rassert! (prereq (Comp. Phototgraphy Seminary) None))
(rassert! (satisfy (Comp. Phototgraphy Seminary) (:or P IB D)))

(rassert! (meetingTime 395 (Tu Th ) 09 30 10 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Intermediate Computer Graphics)))
(rassert! (prereq (Intermediate Computer Graphics) (:and 214 351)))
(rassert! (satisfy (Intermediate Computer Graphics) (:or P D)))

(rassert! (meetingTime 395 (Tu Th ) 12 30 13 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Introduction to Computational Linguistics)))
(rassert! (meetingTime 395 (Tu Th ) 11 00 12 20))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Adv Top: Comp Architect)))

(rassert! (meetingTime 395 (Tu ) 15 00 18 00))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Embedded Systems)))
(rassert! (prereq (Embedded Systems) None))
(rassert! (satisfy (Embedded Systems) (:or SB D)))

(rassert! (meetingTime 395 (We ) 14 00 16 50))
(rassert! (course 395 (Special Topics in Electrical Engineering and Computer Science) (Applied Mechatronics: Quadrotor Design and Control)))
(rassert! (meetingTime 398 (Tu Th ) 13 00 14 15))
(rassert! (course 398 (Electrical Engineering Design) (None)))

;;now put in the new rule, all non-specified courses >= 300 level count as D
;not sure how to implement

;;also the requirement satisfied by other courses not implemented
(rassert! (satisfy 101 C))
(rassert! (satisfy 321 (:or SB D)))
(rassert! (satisfy 325 (:or AIB D)))
(rassert! (satisfy 330 (:or P IB D)))
(rassert! (satisfy 332 (:or IB D)))
(rassert! (satisfy 335 (:or TB D)))
(rassert! (satisfy 337 (:or P AIB D)))
(rassert! (satisfy 338 (:or P SDB D)))
(rassert! (satisfy 340 (:or P SB D)))
(rassert! (satisfy 343 (:or P SB D)))
(rassert! (satisfy 344 (:or P AIB D)))
(rassert! (satisfy 350 (:or P SB D)))
(rassert! (satisfy 351 (:or P IB D)))
(rassert! (satisfy 352 (:or P IB D)))
(rassert! (satisfy 354 (:or P SB D)))
(rassert! (satisfy 369 (:or SB D)))
(rassert! (satisfy 371 (:or P AIB D)))
(rassert! (satisfy 372 (:or AIB D)))
(rassert! (satisfy (Game Design and Developmenet) (:or IB D)))
(rassert! (satisfy (Intro Computational Photography) (:or IB D)))
(rassert! (satisfy (Data Science) (:or SB D)))
(rassert! (satisfy (Game Development Studio) (:or P IB SDB D)))
(rassert! (satisfy (Geospatial Vision and Visualization) (:or P IB D)))
(rassert! (satisfy (Digital Forensics and Incident Response) (:or P SB D)))


;;;;;;;;;;;;;;;pairwise-nogood;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;no course can count for two requirements
(rule ((:true (pairwise-nogood ?req1 ?req2) :var ?hor)
       (:true (?req1 ?course) :var ?f1)
       (:true (?req2 ?course) :var ?f2))
   (rassert! (:not (:and ?hor ?f1 ?f2))))



;;;;;;;;;;;;Prerequisite;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; eliminate req that do not satisfy
(rule ((:true (nosatisfy ?course ?req)))
      (rassert! (:not (?req ?course))
                :course-not-satisfy-req
      )
)

;;prerequisite constraint for regular conjunctive/one prereq
(rule ((:true (prereq ?course ?course-need))
       (:true (satisfy ?course ?req)))
    (when  (null (fetch `(courseTaken ,?course-need)))
      (rassert! (:not (?req ?course)))
))

;;when there is a disjunctive, like :or c1 c2 c3
;;we use prereqor to represent, and check if at least one prereq is met
(rule ((:true (prereqor ?course ?prereq-list))
       (:true (satisfy ?course ?req)))
    (when  (null (dolist (course ?prereq-list)
                    (if (fetch `(courseTaken ,course))
                      (return t))))
           (rassert! (:not (?req ?course)))))

;;;;;;;;;;;Time Conflict;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;time conflict constraint

;;simply version, only compare two courses meeting day and starting time
(rule ((:true (meetingTime ?course1 ?days1 ?startHR1 ?startMIN1 ?endHR1 ?endMIN1))
       (:true (meetingTime ?course2 ?days2 ?startHR2 ?startMIN2 ?endHR2 ?endMIN2))
       (:true (satisfy ?course1 ?req1))
       (:true (satisfy ?course2 ?req2))
       (:true (?req1 ?course1))
       (:true (?req2 ?course2)))
      (when (and (eq ?days1 ?days2)
                 (= ?startHR1 ?startHR2)
                 (not (eq ?course1 ?course2)))
            (rassert! (:not (:and (?req1 ?course1) (?req2 ?course2))))
))

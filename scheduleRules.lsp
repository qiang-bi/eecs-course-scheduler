
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;no course can count for two requirements
(rule ((:true (pairwise-nogood ?req1 ?req2) :var ?hor)
       (:true (?req1 ?class) :var ?f1)
       (:true (?req2 ?class) :var ?f2))
   (rassert! (:not (:and ?hor ?f1 ?f2))))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
;;we use prerepor to represent, and check if at least one prereq is met
(rule ((:true (prereqor ?course ?prereq-list))
       (:true (satisfy ?course ?req)))
    (when  (null
            (dolist (course ?prereq-list)
                (if (fetch `(courseTaken ,course))
                      (return t))))
      (rassert! (:not (?req ?course)))
))


;;time conflict constraint

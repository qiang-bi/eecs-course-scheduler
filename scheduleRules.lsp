
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


;;prerequisite constraint
(rule ((:true (prereq ?course ?course-need))
       (:true (satisfy ?course ?req)))
    (when  (not (fetch `(courseTaken ,?course-need)))
      (rassert! (:not (?req ?course)))
))


;;time conflict constraint

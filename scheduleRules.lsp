
;; one-to-one relationship between each class and requirement
;;each req can be fulfilled only once
(rule ((:true (satisfy ?course1 ?req))
       (:true (satisfy ?course2 ?req)))
      (rassert! (:not (:and (?req ?course1)
                            (?req ?course2)
                      )
                )
                :no-two-courses-count-for-same-req
      )
)

;;no course can count for two requirements
(rule ((:true (pairwise-nogood ?req1 ?req2) :var ?hor)
       (:true (?req1 ?class) :var ?f1)
       (:true (?req2 ?class) :var ?f2))
   (rassert! (:not (:and ?hor ?f1 ?f2))))



;; eliminate req that do not satisfy
(rule ((:true (nosatisfy ?course ?req)))
      (rassert! (:not (?req ?course))
                :course-not-satisfy-req
      )
)


;; prerequisite constraint
;;(rule ((:true (?course satisfy ?req))
;        )



;)


;;time conflict constraint

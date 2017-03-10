
;; one-to-one relationship between each class and requirement
;;that is, each class fulfill only one req, and each req can be fulfilled
;;only once
(rule ((:true (?course1 satisfy ?req))
       (:true (?course2 satisfy ?req)))
      (rassert! (:not (:and (?course1 satisfy ?req)
                            (?course2 satisfy ?req)
                      )
                )
                :no-two-courses-count-for-same-req
      )
)


;; prerequisite constraint
;;(rule ((:true (?course satisfy ?req))
;        )



;)


;;time conflict constraint

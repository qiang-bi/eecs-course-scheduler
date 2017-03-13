;;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10;                             -*-
;;;; ------------------------------------------------------------------------------
;;;; File name: scheduler.lsp
;;;;    System: LTRE
;;;;   Version: 1.0
;;;;    Author: Qiang Bi
;;;;   Created: March 8, 2017
;;;; ------------------------------------------------------------------------------

(in-package :cl-user)

;;;;;;;;;;;;;;;;;;;;;;;;;USER INPUT ;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;enter the courses taken already in a list and each course in the format
;; (courseTaken *coure_catalog_number*)
(defparameter *course-taken*
    '((courseTaken eecs111)
      (courseTaken eecs211)
      (courseTaken eecs214)))

;;enter the requirement looking to fulfill
(defparameter *requirements* '(C1 C2 C3 C4 C5 SB SDB AIB TB IB D P))

;;aftering modifying code above,
;;load the startup.cl file and then call (find-classes)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;No need to alter for code below;;;;;;;;;;;;;;;;;

;;define the list of classes offering this quarter
(defparameter *classes*
   '(eecs111 eecs211 eecs212 eecs213 eecs214 eecs303 eecs322 eecs336 eecs339 eecs345 eecs346 eecs348 eecs349 eecs370 eecs394))

(defparameter *constraint-file* "data")

(defvar *schedule-rule-file* "scheduleRules")

(defun find-classes ()
   (solve-attribution-problem *requirements* *classes* *constraint-file*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; General purpose attribute solver

(defun make-attribute-choice-sets (attributes objects)
   ;; Each attribute is assumed to apply to exactly one of the objects.
   (mapcar #'(lambda (attribute)
                (mapcar #'(lambda (object)
                             (list attribute object)) objects))
      attributes))

(defun solve-attribution-problem (attributes objects constraint-file)
   (in-ltre (create-ltre "Attribution Problem Scratchpad"))
   (bps-load-file (make-bps-path "eecs-course-scheduler") constraint-file)
   (bps-load-file (make-bps-path "eecs-course-scheduler") *schedule-rule-file* :action :compile-if-newer)
   (install-prerequisite-constraints *course-taken*)
   (dd-search (make-attribute-choice-sets attributes objects)
      `(show-attribute-solution ',attributes)))

(defun show-attribute-solution (attributes)
   (format t "~%Solution:")
   ;write predicate to limit minimum # to min-course-wanted
   (dolist (attribute attributes)
      (dolist (match (fetch `(,attribute ?object)))
         (when (true? match)
            (format t "~%  ~A" match)))))

(defun install-prerequisite-constraints (courses-taken)
   (dolist (course courses-taken)
      (assert! course :course-taken)))

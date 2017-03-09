;;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10;                             -*-
;;;; ------------------------------------------------------------------------------
;;;; File name: scheduler.lsp
;;;;    System: LTRE
;;;;   Version: 1.0
;;;;    Author: Qiang Bi
;;;;   Created: March 8, 2017
;;;; ------------------------------------------------------------------------------

(in-package :cl-user)

(defparameter *classes*
   '(eecs348 eecs336 eecs339)) ;; interests

(defparameter *requirements* '(SB TB))

(defparameter *constraint-file* "data")

(defun find-classes ()
   (solve-attribution-problem *classes* *requirements* *constraint-file*))

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
   (dd-search (make-attribute-choice-sets attributes objects)
      `(show-attribute-solution ',attributes)))

(defun show-attribute-solution (attributes)
   (format t "~%Solution:")
   (dolist (attribute attributes)
      (dolist (match (fetch `(,attribute ?object)))
         (when (true? match)
            (format t "~%  ~A" match)))))

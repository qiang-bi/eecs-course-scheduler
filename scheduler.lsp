;;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10;                             -*-
;;;; ------------------------------------------------------------------------------
;;;; File name: scheduler.lsp
;;;;    System: EECS Course Scheduler
;;;;   Version: 1.0
;;;;    Author: Qiang Bi
;;;;   Created: Mar 4, 2017
;;;;   Purpose: EECS courser scheduler, offer user a large number of feasible
;;;;            choices for course selection
;;;; ------------------------------------------------------------------------------

(defvar *scheduler-rule-path*
    (make-bps-path "scheduler"))

(defvar *scheduler-rule-file-name*
    "schedulerRules")

;;; Entry point
(defun solve-scheduler-problem (problem)
   (in-ltre (create-ltre  "course scheduler"))
  (bps-load-file *scheduler-rule-path*
                 *scheduler-rule-file-name*
                 :action :compile-if-newer)
  (install-scheduler-constraints problem)
  (catch 'found-crypto-solution
         ;; Assume unique, so stop at first one
         (dd-search (make-letter-choice-sets problem)
                    `(describe-scheduler-solution
                      ',problem))))

;; Example problems

(defparameter *course-taken*
   '(111 211 212 213 214 348 339 344 205 203))

(defparameter *regular-courses-offering*
  '(111 211 212 213 214 303 322 336 339 345 346 348 349 370 394))

(defparameter *395-courses-offering*
  '('(Machine Learning: Foundations, Apps, & Algorithms)
    '(Requirements Gathering & Decision-Support Tool Dev)
    '(Bioelectric Systems Modeling and Analysis)
    '(Innovation Journalism and Technology)
    '(Software Construction)
    '(Comp. Phototgraphy Seminary)
    '(Intermediate Computer Graphics)
    '(Introduction to Computational Linguistics)
    '(Adv Top: Comp Architect)
    '(Embedded Systems)
    '(Applied Mechatronics: Quadrotor Design and Control)
    ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Displaying solutions


(defun describe-scheduler-solution (problem)
   (format t "~%Solution:~%")
   (dolist (letter (extract-problem-letters problem))
      (dolist (match (fetch `(value-of ,letter ?value)))
         (when (true? match)
           (format t "~A=~A;" (cadr match) (third match)))))
  (throw 'found-crypto-solution
    (show-scheduler-solution problem)))

(defun show-scheduler-solution (problem)
   (dotimes (i 3)
     (produce-scheduler-solution-line problem i)))

(defun produce-scheduler-solution-line (problem i)
   ;; Assumes right-left order of columns in problem description
   (format t "~%")
  (dolist (column (reverse problem))
    (unless (eq (car column) 'leftmost-column)
      (let* ((letter (car (nthcdr (+ i 2) column)))
             (value (if (eq letter :blank) " "
                      (lookup-letter-value letter))))
        (format t "~A" value)))))

(defun lookup-letter-value (letter)
   (dolist (match (fetch `(value-of ,letter ?value)))
      (when (true? match)
         (return-from lookup-letter-value (values (third match))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Utilities

(defun install-scheduler-constraints (problem)
   (dolist (statement problem)
      (assert! statement :courses-taken)))

(defun extract-problem-letters (problem)
   (let ((letters nil))
      (dolist (column problem letters)
         (dolist (letter (cddr column))
            (unless (eq letter :blank)
               (pushnew letter letters))))))

(defun calculate-column-results (top bot carry)
   (let ((sum (+ top bot carry)))
      (values (mod sum 10) (floor (/ sum 10)))))

(defun make-letter-choice-sets (problem)
   (mapcar #'(lambda (letter)
                (let ((choices nil))
                   (dotimes (i 10 (nreverse choices))
                      (push `(value-of ,letter ,i) choices))))
      (extract-problem-letters problem)))

;;;; -*- Mode: LISP; Syntax: Common-Lisp; Base: 10;                             -*-
;;;; ------------------------------------------------------------------------------
;;;; File name: startup.cl
;;;;    System: LTRE
;;;;   Version: 1.0
;;;;    Author: Qiang Bi
;;;;   Created: March 8, 2017
;;;; ------------------------------------------------------------------------------

;;load the qrgsetup and bps-init file
(load "~/344/acl100-smp.64/qrg/bps/qrgsetup.lsp")
(load "~/344/acl100-smp.64/qrg/bps/bps-init.lsp")

;;load the ltre system
(load-bps-system :ltre :compile-if-newer)

;;load the scheduler
(load "~/344/acl100-smp.64/qrg/bps/eecs-course-scheduler/scheduler.lsp")

;;call find classes
(find-classes)

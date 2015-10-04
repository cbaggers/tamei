;;;; package containing all pure flow control forms from common lisp
;;;; This means forms where the jumps are within the form only and
;;;; have no implicit progn e.g. if

(defpackage #:cl-pure-flow
  (:use #:tamei-common)
  (:import-from :cl
                #:if)
  (:export #:if))

;;;; package containing all pure flow control forms from common lisp
;;;; This means forms where the jumps are within the form only e.g. if, case

(defpackage #:cl-pure-flow
  (:use #:tamei-common)
  (:import-from :cl
                #:cond
                #:case
                #:ccase
                #:when)
  (:export #:cond
           #:case
           #:ccase
           #:when))

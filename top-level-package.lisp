;;;; Pakcage containing all the top level defs from common lisp
;;;; all forms that, according to the spec, are only meant to be used at the top level

(defpackage #:cl-top-level-defines
  (:use #:tamei-common)
  (:import-from :cl
                )
  (:export))

;;;; package containing all IO forms from common lisp
;;;; Also impure forms but can perfrom IO

(defpackage #:cl-impure-io
  (:use #:tamei-common)
  (:import-from :cl
                #:add-method
                #:adjust-array)
  (:export #:add-method
           #:adjust-array))

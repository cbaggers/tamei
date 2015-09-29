;;;; package containing all IO forms from common lisp
;;;; Also impure forms but can perfrom IO

(defpackage #:cl-impure-io
  (:use #:cl)
  (:export #:add-method
           #:adjust-array))

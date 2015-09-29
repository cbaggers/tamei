;;;; package containing all impure or destructive forms from common lisp
;;;; function or macros that mutate their input in any way, or rely on data
;;;; other than from it's arguments e.g. nconc, setf
;;;; This EXCLUDES IO, because we are keeping that in the impure-io-package.

(defpackage #:cl-impure
  (:use #:tamei-common)
  (:import-from :cl
                #:add-method
                #:adjust-array)
  (:export #:add-method
           #:adjust-array))

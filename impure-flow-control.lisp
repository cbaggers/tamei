;;;; package containing all impure or destructive forms from common lisp
;;;; This means forms which can cause a jump outside of itself. e.g. return

(defpackage #:cl-impure-flow
  (:use #:cl)
  (:export #:abort))

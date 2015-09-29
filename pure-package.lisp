;;;; package containing all the pure forms from common lisp
;;;; functions or macros that do not modify the inputs or perform visible
;;;; flow control, and that only operate on their arguments. e.g. > equal sqrt

(defpackage #:cl-pure
  (:use #:cl)
  (:export #:>
           #:>=
           #:abs
           #:acons
           #:acos
           #:acosh
           #:adjoin))

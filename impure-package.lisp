;;;; package containing all the pure forms from common lisp
;;;; functions or macros that do not modify the inputs or perform visible
;;;; flow control, and that only operate on their arguments.
;;;; Can throw exceptions
;;;;e.g. > equal sqrt

(defpackage #:cl-pure
  (:use #:tamei-common)
  (:import-from :cl
                #:>
                #:>=
                #:abs
                #:acons
                #:acos
                #:acosh
                #:adjoin
                #:slot-boundp
                #:slot-exists-p
                #:sort)
  (:export #:>
           #:>=
           #:abs
           #:acons
           #:acos
           #:acosh
           #:adjoin
           #:slot-boundp
           #:slot-exists-p
           #:sort))

;;;; package containing all the pure forms from common lisp
;;;; functions or macros that do not modify the inputs or perform visible
;;;; flow control, and that only operate on their arguments. e.g. > equal sqrt

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
                #:slot-value
                #:software-type
                #:software-version
                #:some)
  (:export #:>
           #:>=
           #:abs
           #:acons
           #:acos
           #:acosh
           #:adjoin
           #:slot-boundp
           #:slot-exists-p
           #:slot-value
           #:software-type
           #:software-version
           #:some))

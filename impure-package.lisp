;;;; package containing all the pure forms from common lisp
;;;; functions or macros that do not modify the inputs or perform visible
;;;; flow control, and that only operate on their arguments.
;;;; Can throw exceptions
;;;;e.g. > equal sqrt

(defpackage #:cl-impure
  (:use #:tamei-common)
  (:import-from :cl
                #:>
                #:>=
                #:abs
                #:acons
                #:acos
                #:acosh
                #:adjoin
                #:bit-and
                #:bit-andc1
                #:bit-andc2
                #:bit-eqv
                #:bit-ior
                #:bit-nand
                #:bit-nor
                #:slot-boundp
                #:slot-exists-p
                #:sort
                #:software-type
                #:software-version
                #:compute-restarts
                #:vector-pop
                #:vector-push
                #:vector-push-extend)
  (:export #:>
           #:>=
           #:abs
           #:acons
           #:acos
           #:acosh
           #:adjoin
           #:bit-and
           #:bit-andc1
           #:bit-andc2
           #:bit-eqv
           #:bit-ior
           #:bit-nand
           #:bit-nor
           #:slot-boundp
           #:slot-exists-p
           #:sort
           #:software-type
           #:software-version
           #:compute-restarts
           #:vector-pop
           #:vector-push
           #:vector-push-extend))

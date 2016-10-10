#||

- Public Service Announcement -

Now you may be thinking 'This is a package in a directory called 'test' and the
file has test in the name, this clearly means he thinks this is good practice.
No! It means this is how he thinks all lisp should be written. I must leap on
the internet to tell everyone how unbelievably stupid this is.'

If this is you, please try feeding yourself into a woodchipper until these
troublsome thoughts cease to burden you.

||#


(uiop:define-package #:purer (:use #:tamei.functions.pure #:tamei.constants
                                   #:tamei.uncategorized.types
                                   #:tamei.uncategorized.symbols)
  (:reexport #:tamei.functions.pure #:tamei.constants
             #:tamei.uncategorized.types #:tamei.uncategorized.symbols)
  (:shadow :labels
           :let
           :let*
           :locally
           :macrolet
           :symbol-macrolet
           :unwind-protect
           :case
           :ccase
           :ecase
           :typecase
           :ctypecase
           :etypecase
           :cond
           :defconstant
           :defparameter
           :defun
           :defmacro
           :lambda
           :defmethod
           :deftype
           :define-compiler-macro
           :destructuring-bind
           :multiple-value-bind
           :unless
           :when)
  (:import-from :cl
                :eval-when
                :if
                :multiple-value-call
                :quote
                :the
                :and
                :or
                :declaim
                :in-package
                :defpackage
                :defstruct
                :multiple-value-list
                :nth-value
                :time
                :trace
                :untrace
                :&rest
                :&body
                :&key
                :&optional)
  (:export
   ;; shadowed
   :labels
   :let
   :let*
   :locally
   :macrolet
   :symbol-macrolet
   :unwind-protect
   :case
   :ccase
   :ecase
   :typecase
   :ctypecase
   :etypecase
   :cond
   :defconstant
   :defparameter
   :defun
   :defmacro
   :lambda
   :defmethod
   :deftype
   :define-compiler-macro
   :destructuring-bind
   :multiple-value-bind
   :unless
   :when
   ;; from cl
   :eval-when
   :if
   :multiple-value-call
   :quote
   :the
   :and
   :or
   :declaim
   :in-package
   :defpackage
   :defstruct
   :multiple-value-list
   :nth-value
   :time
   :trace
   :untrace
   :&rest
   :&body
   :&key
   :&optional))

(uiop:define-package #:purer-user (:use #:purer) (:reexport #:purer))

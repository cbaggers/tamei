(defpackage #:tamei.uncategorized.special-operators
  (:use :cl)
  (:export
   :flet
   :let
   :return-from
   :load-time-value
   :progn
   :setq
   :catch
   :go
   :tagbody
   :block
   :the
   :symbol-macrolet
   :throw
   :macrolet
   :multiple-value-prog1
   :eval-when
   :if
   :progv
   :unwind-protect
   :function
   :let*
   :labels
   :locally
   :multiple-value-call
   :quote))

(defpackage #:tamei.uncategorized.macros
  (:use :cl)
  (:export
   :untrace
   :decf
   :and
   :case
   :define-method-combination
   :do-external-symbols
   :handler-case
   :remf
   :call-method
   :define-compiler-macro
   :with-open-stream
   :with-compilation-unit
   :cond
   :defpackage
   :with-hash-table-iterator
   :ctypecase
   :pprint-logical-block
   :defgeneric
   :etypecase
   :defmacro
   :pop
   :restart-case
   :defclass
   :with-output-to-string
   :rotatef
   :with-slots
   :pprint-exit-if-list-exhausted
   :with-input-from-string
   :typecase
   :psetq
   :pprint-pop
   :declaim
   :assert
   :with-accessors
   :handler-bind
   :do*
   :define-setf-expander
   :with-open-file
   :with-package-iterator
   :restart-bind
   :defun
   :trace
   :prog1
   :setf
   :or
   :defstruct
   :check-type
   :dolist
   :step
   :unless
   :ccase
   :multiple-value-setq
   :with-condition-restarts
   :ecase
   :shiftf
   :loop
   :formatter
   :time
   :lambda
   :destructuring-bind
   :loop-finish
   :multiple-value-list
   :multiple-value-bind
   :print-unreadable-object
   :prog
   :do-symbols
   :do-all-symbols
   :in-package
   :do
   :pushnew
   :with-standard-io-syntax
   :defparameter
   :psetf
   :dotimes
   :defsetf
   :with-simple-restart
   :defmethod
   :nth-value
   :ignore-errors
   :incf
   :defconstant
   :when
   :define-symbol-macro
   :push
   :define-condition
   :prog*
   :return
   :define-modify-macro
   :deftype
   :defvar
   :prog2))

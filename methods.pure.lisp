(uiop:define-package #:tamei.methods.pure (:use :cl)
  (:export
   ;; Objects
   :no-applicable-method
   :make-load-form
   :find-method
   :function-keywords
   :slot-missing
   :method-qualifiers
   :class-name
   :compute-applicable-methods

   ;; Streams
   :stream-element-type
   :input-stream-p
   :interactive-stream-p
   :open-stream-p
   :output-stream-p))

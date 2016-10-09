(uiop:define-package #:tamei.methods.impure (:use :cl)
  (:export
   ;;
   ;; Streams
   :close

   ;;
   ;; Printer
   :print-object

   ;;
   ;; Objects
   :add-method
   :no-next-method
   :remove-method
   :change-class
   :update-instance-for-different-class
   :update-instance-for-redefined-class
   :allocate-instance
   :initialize-instance
   :make-instance
   :make-instances-obsolete
   :reinitialize-instance
   :shared-initialize
   :slot-unbound

   ;;
   ;; Environment
   :describe-object
   :documentation))

(uiop:define-package #:tamei.functions.impure (:use)
  (:import-from
   :cl
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
   :documentation)
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

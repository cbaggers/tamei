;;;; package containing all impure or destructive forms from common lisp
;;;; This means forms which can cause a jump outside of itself. e.g. return
;;;; or have implicit progn .e.g. case, cond, etc

(defpackage #:cl-impure-flow
  (:use #:tamei-common)
  (:import-from :cl
                #:abort
                #:catch
                #:cond
                #:case
                #:ccase
                #:progv
                #:prog2
                #:progn
                #:warn
                #:when
                #:handler-bind
                #:handler-case
                #:signal
                #:store-value
                #:method-combination-error
                #:muffle-warning
                #:multiple-value-prog1
                #:multiple-value-bind
                #:cerror
                #:continue
                #:ctypecase)
  (:export #:abort
           #:catch
           #:cond
           #:case
           #:ccase
           #:progv
           #:prog2
           #:progn
           #:warn
           #:when
           #:handler-bind
           #:handler-case
           #:signal
           #:store-value
           #:method-combination-error
           #:muffle-warning
           #:multiple-value-prog1
           #:multiple-value-bind
           #:cerror
           #:continue
           #:ctypecase))

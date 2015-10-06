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
                #:add-method
                #:adjoin
                #:adjust-array
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
                #:vector-push-extend
                #:provide
                #:psetf
                #:psetq
                #:push
                #:pushnew
                #:random
                #:import
                #:in-package
                #:incf
                #:inspect
                #:set-syntax-from-char
                #:setf
                #:setq
                #:shadow
                #:shadowing-import
                #:shared-initialize
                #:shiftf
                #:sleep
                #:stable-sort
                #:make-instances-obsolete
                #:make-load-form ;; cant guarentee
                #:make-load-form-saving-slots ;; cant guarentee
                #:makunbound
                #:map-into
                #:map ;; supplying nil is relying on sideffects
                #:mapc ;; function only run for side effects as results arent returned
                #:mapcan
                #:mapcon
                #:maphash ;; function must side effect
                #:mapl
                #:merge
                #:multiple-value-setq
                #:nbutlast
                #:nconc
                #:nintersection
                #:nreconc
                #:nreverse
                #:nset-difference
                #:nset-exclusive-or
                #:nstring-capitalize
                #:nstring-downcase)
  (:export #:>
           #:>=
           #:abs
           #:acons
           #:acos
           #:acosh
           #:add-method
           #:adjoin
           #:adjust-array
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
           #:vector-push-extend
           #:provide
           #:psetf
           #:psetq
           #:push
           #:pushnew
           #:random
           #:import
           #:in-package
           #:incf
           #:inspect
           #:set-syntax-from-char
           #:setf
           #:setq
           #:shadow
           #:shadowing-import
           #:shared-initialize
           #:shiftf
           #:sleep
           #:stable-sort
           #:make-instances-obsolete
           #:make-load-form
           #:make-load-form-saving-slots
           #:makunbound
           #:map-into
           #:map
           #:mapc
           #:mapcan
           #:mapcon
           #:maphash
           #:mapl
           #:merge
           #:multiple-value-setq
           #:nbutlast
           #:nconc
           #:nintersection
           #:nreconc
           #:nreverse
           #:nset-difference
           #:nset-exclusive-or
           #:nstring-capitalize
           #:nstring-downcase))

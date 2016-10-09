(in-package :purer)

(cl:defun assert-body (form)
  (cl:when (listp form)
    (cl:assert (= (length form) 1))))

(cl:defun check-named-lambda-form (form)
  (cl:destructuring-bind (name args &rest body) form
    (cl:declare (cl:ignore args))
    (cl:assert name)
    (cl:assert (= (length body) 1))
    form))

(cl:defun assert-valid-case-form (form)
  (cl:assert (= (length form) 2)))

(cl:defmacro labels (definitions &body form)
  (assert-body form)
  (map nil #'check-named-lambda-form definitions)
  `(cl:labels ,definitions
     ,@form))

(cl:defmacro let (bindings &body form)
  (assert-body form)
  `(cl:let ,bindings
     ,@form))

(cl:defmacro let* (bindings &body form)
  (assert-body form)
  `(cl:let ,bindings
     ,@form))

(cl:defmacro locally (declaration &body form)
  (assert-body form)
  (cl:assert (eq (first declaration) 'cl:declare))
  `(cl:locally ,declaration
     ,@form))

(cl:defmacro macrolet (definitions &body form)
  (assert-body form)
  (map nil #'check-named-lambda-form definitions)
  `(cl:macrolet ,definitions
     ,@form))

(cl:defmacro symbol-macrolet (macrobindings &body form)
  (assert-body form)
  `(cl:symbol-macrolet ,macrobindings
     ,@form))

(cl:defmacro unwind-protect (protected-form &body cleanup-form)
  (assert-body cleanup-form)
  `(cl:unwind-protect ,protected-form
     ,@cleanup-form))

(cl:defmacro case (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:case ,keyform
     ,@cases))

(cl:defmacro ccase (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:ccase ,keyform
     ,@cases))

(cl:defmacro ecase (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:ecase ,keyform
     ,@cases))

(cl:defmacro typecase (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:typecase ,keyform
     ,@cases))

(cl:defmacro ctypecase (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:ctypecase ,keyform
     ,@cases))

(cl:defmacro etypecase (keyform &body cases)
  (map nil #'assert-valid-case-form cases)
  `(cl:etypecase ,keyform
     ,@cases))

(cl:defmacro cond (&body clauses)
  (map nil #'assert-valid-case-form clauses)
  `(cl:cond ,@clauses))

(cl:defmacro defconstant (name value &optional (documentation "TODO"))
  `(cl:defconstant ,name ,value ,documentation))

(cl:defmacro defparameter (var val &optional (doc "TODO"))
  `(cl:defparameter ,var ,val ,doc))

(cl:defmacro defun (name args &body form)
  (assert-body form)
  `(cl:defun ,name ,args ,@form))

(cl:defmacro defmacro (name lambda-list &body form)
  (assert-body form)
  `(cl:defmacro ,name ,lambda-list ,@form))

(cl:defmacro lambda (args &body form)
  (assert-body form)
  `(cl:lambda ,args ,@form))

(cl:defmacro defmethod (name args &body form)
  (assert-body form)
  `(cl:defmethod ,name ,args ,@form))

(cl:defmacro deftype (name args &body form)
  (assert-body form)
  `(cl:deftype ,name ,args ,@form))

(cl:defmacro define-compiler-macro (name args &body form)
  (assert-body form)
  `(cl:define-compiler-macro ,name ,args ,@form))

(cl:defmacro destructuring-bind (lambda-list expression &body form)
  (assert-body form)
  `(cl:destructuring-bind ,lambda-list ,expression
     ,@form))

(cl:defmacro multiple-value-bind (vars value-form &body form)
  (assert-body form)
  `(cl:multiple-value-bind ,vars ,value-form
     ,@form))

(cl:defmacro unless (test &body form)
  (assert-body form)
  `(cl:unless ,test
     ,@form))

(cl:defmacro when (test &body form)
  (assert-body form)
  `(cl:when ,test
     ,@form))


;; {TODO} work these out
;; assert
;; check-type
;; defgeneric

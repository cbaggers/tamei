(require 'slime)

(setf *names* '())

(setf *i* 0)

(setf *pure* '())

(setf *impure* '())

(setf *unknown* '(use-value symbol-value parse-namestring fdefinition documentation gentemp file-string-length invoke-restart make-symbol make-package logical-pathname-translations gensym merge-pathnames no-applicable-method function-lambda-expression file-length symbol-function translate-logical-pathname compute-applicable-methods listen invalid-method-error list-all-packages find-class))

(defun test ()
  (while *names*
    (let (;; (browse-url-browser-function #'browse-url-default-macosx-browser)
          (name (nth *i* *names*)))
      (print name)
      (slime-hyperspec-lookup (symbol-name name))
      (let ((char (read-char)))
        (cond
         ((= char 121) (push name *pure*) (incf *i*))
         ((= char 110) (push name *impure*) (incf *i*))
         ((= char 117) (push name *unknown*) (incf *i*))
         ((= char 113) (return)))))))

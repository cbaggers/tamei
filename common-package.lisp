;;;; package containing all pure flow control forms from common lisp
;;;; This means forms where the jumps are within the form only e.g. if, case

(defpackage #:tamei-common
  (:import-from :cl
                #:in-package)
  (:export #:in-package))

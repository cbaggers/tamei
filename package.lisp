;;;; package containing all pure flow control forms from common lisp
;;;; This means forms where the jumps are within the form only e.g. if, case

(defpackage #:tamei.functions.pure
  (:import-from :cl)
  ;;(:export #:in-package)
  )

(defpackage #:tamei.functions.impure
  (:import-from :cl)
  ;;(:export #:in-package)
  )

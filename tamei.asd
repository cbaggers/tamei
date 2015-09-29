;;;; tamei.asd

(asdf:defsystem #:tamei
  :description "Common Lisp symbols separated into packages according to their purity"
  :author "Baggers (techsnuffle@gmail.com)"
  :license "BSD - 2 Clause"
  :serial t
  :components ((:file "common-package")
               (:file "impure-flow-control")
               (:file "impure-package")
               (:file "impure-io-package")
               (:file "pure-flow-control")
               (:file "pure-package")
               (:file "top-level-package")))

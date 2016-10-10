;;;; tamei.asd

(asdf:defsystem #:tamei
  :description "Common Lisp symbols separated into packages according to their purity"
  :author "Baggers (techsnuffle@gmail.com)"
  :license "BSD - 2 Clause"
  :serial t
  :components ((:file "constants")
               (:file "uncategorized.macros")
               (:file "uncategorized.special-operators")
               (:file "uncategorized.variables")
               (:file "functions.pure")
               (:file "functions.impure")
               (:file "methods.pure")
               (:file "methods.impure")))

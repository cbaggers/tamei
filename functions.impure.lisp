(uiop:define-package #:tamei.functions.impure
    (:import-from
     :cl
     ;;
     ;; Arrays
     :adjust-array
     :vector-pop
     :vector-push
     :vector-push-extend

     ;;
     ;; System Construction
     :compile-file-pathname
     :load
     :require
     :provide

     ;;
     ;; Evaluation and Compilation
     :compile
     :compile-file
     :eval
     :macroexpand
     :macroexpand-1
     :proclaim

     ;;
     ;; Reader
     :make-dispatch-macro-character
     :set-dispatch-macro-character
     :set-macro-character
     :set-syntax-from-char

     ;;
     ;; Streams
     :file-length
     :listen
     :open
     :peek-char
     :read
     :read-byte
     :read-char
     :read-char-no-hang
     :read-delimited-list
     :read-from-string
     :read-line
     :read-preserving-whitespace
     :read-sequence
     :unread-char
     :write
     :write-byte
     :write-char
     :write-line
     :write-sequence
     :write-string
     :write-to-string
     :clear-input
     :clear-output
     :close
     :finish-output
     :force-output
     :fresh-line
     :get-output-stream-string
     :make-synonym-stream
     :terpri
     :y-or-n-p
     :yes-or-no-p

     ;;
     ;; Symbols
     :makunbound
     :set
     :remprop
     :boundp
     :symbol-function
     :symbol-value
     :gentemp

     ;;
     ;; Data Flow & Controlo
     :fmakunbound
     :fdefinition
     :fboundp

     ;;
     ;; Printer
     :copy-pprint-dispatch
     :pprint
     :pprint-dispatch
     :pprint-fill
     :pprint-indent
     :pprint-linear
     :pprint-newline
     :pprint-tab
     :pprint-tabular
     :prin1
     :prin1-to-string
     :princ
     :princ-to-string
     :print
     :print-not-readable-object
     :print-object
     :format
     :set-pprint-dispatch

     ;;
     ;; Strings
     :nstring-capitalize
     :nstring-downcase
     :nstring-upcase

     ;;
     ;; Numbers
     :random

     ;;
     ;; Conses
     :nset-difference
     :nset-exclusive-or
     :nunion
     :nsublis
     :nsubst
     :nsubst-if
     :nsubst-if-not
     :mapcan
     :mapcon
     :mapl
     :revappend
     :rplaca
     :rplacd

     ;;
     ;; Sequences
     :delete
     :delete-duplicates
     :delete-if
     :delete-if-not
     :nsubstitute
     :nsubstitute-if
     :nsubstitute-if-not
     :nreverse
     :replace
     :stable-sort
     :sort
     :map-into
     :merge
     :fill

     ;; Files
     :delete-file
     :file-position
     :file-write-date
     :probe-file
     :rename-file
     :truename
     :directory
     :ensure-directories-exist

     ;; Packages
     :list-all-packages
     :make-package
     :find-all-symbols
     :export
     :import
     :intern
     :delete-package
     :find-package
     :rename-package
     :unuse-package
     :use-package
     :unexport
     :unintern
     :shadow
     :shadowing-import


     ;; Filenames
     :load-logical-pathname-translations
     :logical-pathname
     :make-pathname
     :user-homedir-pathname
     :enough-namestring

     ;; Conditions
     :invoke-restart
     :use-value
     :cerror
     :error
     :method-combination-error
     :abort
     :break
     :compute-restarts
     :continue
     :find-restart
     :invoke-restart-interactively
     :invoke-debugger
     :muffle-warning
     :warn
     :signal
     :store-value

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
     :ensure-generic-function
     :shared-initialize
     :slot-makunbound
     :slot-unbound

     ;; Environment
     :describe
     :describe-object
     :disassemble
     :ed
     :get-decoded-time
     :get-internal-real-time
     :get-internal-run-time
     :get-universal-time
     :apropos
     :apropos-list
     :inspect
     :dribble
     :room
     :sleep
     :documentation

     ;; Hash Table
     :clrhash
     :remhash
     )
  (:export
   ;;
   ;; Arrays
   :adjust-array
   :vector-pop
   :vector-push
   :vector-push-extend

   ;;
   ;; System Construction
   :compile-file-pathname
   :load
   :require
   :provide

   ;;
   ;; Evaluation and Compilation
   :compile
   :compile-file
   :eval
   :macroexpand
   :macroexpand-1
   :proclaim

   ;;
   ;; Reader
   :make-dispatch-macro-character
   :set-dispatch-macro-character
   :set-macro-character
   :set-syntax-from-char

   ;;
   ;; Streams
   :file-length
   :listen
   :open
   :peek-char
   :read
   :read-byte
   :read-char
   :read-char-no-hang
   :read-delimited-list
   :read-from-string
   :read-line
   :read-preserving-whitespace
   :read-sequence
   :unread-char
   :write
   :write-byte
   :write-char
   :write-line
   :write-sequence
   :write-string
   :write-to-string
   :clear-input
   :clear-output
   :close
   :finish-output
   :force-output
   :fresh-line
   :get-output-stream-string
   :make-synonym-stream
   :terpri
   :y-or-n-p
   :yes-or-no-p

   ;;
   ;; Symbols
   :makunbound
   :set
   :remprop
   :boundp
   :symbol-function
   :symbol-value
   :gentemp

   ;;
   ;; Data Flow & Controlo
   :fmakunbound
   :fdefinition
   :fboundp

   ;;
   ;; Printer
   :copy-pprint-dispatch
   :pprint
   :pprint-dispatch
   :pprint-fill
   :pprint-indent
   :pprint-linear
   :pprint-newline
   :pprint-tab
   :pprint-tabular
   :prin1
   :prin1-to-string
   :princ
   :princ-to-string
   :print
   :print-not-readable-object
   :print-object
   :format
   :set-pprint-dispatch

   ;;
   ;; Strings
   :nstring-capitalize
   :nstring-downcase
   :nstring-upcase

   ;;
   ;; Numbers
   :random

   ;;
   ;; Conses
   :nset-difference
   :nset-exclusive-or
   :nunion
   :nsublis
   :nsubst
   :nsubst-if
   :nsubst-if-not
   :mapcan
   :mapcon
   :mapl
   :revappend
   :rplaca
   :rplacd

   ;;
   ;; Sequences
   :delete
   :delete-duplicates
   :delete-if
   :delete-if-not
   :nsubstitute
   :nsubstitute-if
   :nsubstitute-if-not
   :nreverse
   :replace
   :stable-sort
   :sort
   :map-into
   :merge
   :fill

   ;; Files
   :delete-file
   :file-position
   :file-write-date
   :probe-file
   :rename-file
   :truename
   :directory
   :ensure-directories-exist

   ;; Packages
   :list-all-packages
   :make-package
   :find-all-symbols
   :export
   :import
   :intern
   :delete-package
   :find-package
   :rename-package
   :unuse-package
   :use-package
   :unexport
   :unintern
   :shadow
   :shadowing-import


   ;; Filenames
   :load-logical-pathname-translations
   :logical-pathname
   :make-pathname
   :user-homedir-pathname
   :enough-namestring

   ;; Conditions
   :invoke-restart
   :use-value
   :cerror
   :error
   :method-combination-error
   :abort
   :break
   :compute-restarts
   :continue
   :find-restart
   :invoke-restart-interactively
   :invoke-debugger
   :muffle-warning
   :warn
   :signal
   :store-value

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
   :ensure-generic-function
   :shared-initialize
   :slot-makunbound
   :slot-unbound

   ;; Environment
   :describe
   :describe-object
   :disassemble
   :ed
   :get-decoded-time
   :get-internal-real-time
   :get-internal-run-time
   :get-universal-time
   :apropos
   :apropos-list
   :inspect
   :dribble
   :room
   :sleep
   :documentation

   ;; Hash Table
   :clrhash
   :remhash))

(require 'slime)

(setf *names* '())

(setf *i* 0)

(setf *pure* '(bit-xor expt > string caaddr hash-table-count sbit
                       position complex make-array set-difference logcount packagep asinh
                       bit-eqv rationalp log package-nicknames list substitute-if bit-ior
                       phase union char> hash-table-p maplist find cos
                       hash-table-rehash-threshold special-operator-p copy-structure ldb-test
                       tailp lognand mismatch char-int endp upgraded-complex-part-type exp
                       schar encode-universal-time subtypep char< lognot round random-state-p
                       boole char-downcase slot-boundp pairlis sin dpb make-hash-table
                       symbolp keywordp copy-list - char>= adjustable-array-p minusp
                       float-sign adjoin assoc bit-nor upper-case-p slot-exists-p values
                       caddr floor string-greaterp rassoc <= caaar float-digits
                       compiled-function-p cdadr ldiff formatter decode-universal-time
                       remove-if graphic-char-p cdaar copy-seq third numberp assoc-if string>
                       oddp concatenate digit-char-p numerator integer-decode-float
                       constantly cddr zerop second copy-readtable typep bit-not imagpart
                       hash-table-test byte string-lessp gethash cddar bit-vector-p ftruncate
                       notevery characterp + assoc-if-not sxhash fround mapcar bit-and ldb
                       logeqv hash-table-size sublis list-length both-case-p char= char-lessp
                       signum mask-field char-code length gcd caaadr char-greaterp string/=
                       logorc1 consp functionp fifth open-stream-p digit-char array-dimension
                       set-exclusive-or first realpart identity copy-alist sixth
                       member-if-not count-if-not tree-equal interactive-stream-p logorc2
                       logand stream-element-type logtest array-row-major-index parse-integer
                       float plusp constantp cosh find-if-not input-stream-p
                       array-in-bounds-p simple-string-p row-major-aref ffloor
                       hash-table-rehash-size nth-value cdr atanh byte-size caadar last caadr
                       char-not-equal rem equalp fceiling scale-float cadr lcm remove-if-not
                       list* cdaddr mod sqrt get char-name some slot-value append caddar
                       logbitp seventh * isqrt find-if bit-andc1 logior bit-nand tenth
                       bit-orc1 copy-tree aref array-dimensions subst-if-not complement count
                       svref integer-length cddaar reduce count-if char-equal string>=
                       position-if string-upcase nthcdr boundp car make-sequence not
                       symbol-plist array-rank < subsetp array-displacement lower-case-p
                       char-not-lessp rassoc-if string-capitalize evenp subst acos butlast
                       char/= fill-pointer listp intersection make-string lognor string=
                       cadadr 1+ subseq logxor cadar atan eighth string< map bit-orc2
                       string-equal cddddr quote alphanumericp ninth ceiling deposit-field /=
                       fourth equal fboundp reverse abs multiple-value-list cdadar
                       position-if-not integerp symbol-name floatp cis substitute-if-not rest
                       denominator string-downcase substitute remove vectorp
                       string-right-trim rassoc-if-not caaaar float-precision
                       simple-condition-format-control arrayp cons simple-bit-vector-p
                       lisp-implementation-version make-list class-of
                       upgraded-array-element-type string-left-trim sinh funcall conjugate
                       member string-trim array-has-fill-pointer-p cadaar file-error-pathname
                       null asin rationalize cdaadr logandc2 member-if char<= eql apply
                       cadddr truncate eq code-char acosh = bit array-element-type max
                       name-char string-not-greaterp cdddr char atom type-of notany nth
                       package-name char-upcase simple-vector-p subst-if bit-andc2 caar realp
                       streamp decode-float file-author vector get-properties
                       stream-external-format search remove-duplicates tan stringp
                       output-stream-p synonym-stream-symbol cdaaar char-not-greaterp
                       rational min standard-char-p readtablep ash cdar complexp getf cdddar
                       logandc1 >= character coerce byte-position acons 1- float-radix
                       unbound-slot-instance string-not-lessp values-list string<= elt
                       array-total-size / string-not-equal or tanh every cddadr cddadr
                       alpha-char-p))

(setf *impure* '(store-value lambda reinitialize-instance print-object
                             type-error-expected-type rename-file with-package-iterator
                             nstring-capitalize with-condition-restarts function-keywords
                             restart-bind defun makunbound trace echo-stream-input-stream
                             pprint-linear finish-output nconc rename-package clear-input
                             use-package long-site-name concatenated-stream-streams nsubstitute-if
                             make-broadcast-stream make-symbol vector-pop package-use-list
                             destructuring-bind nintersection no-applicable-method find-class
                             nsubst-if setf list-all-packages defstruct defmacro merge file-length
                             dolist princ-to-string step unless nset-difference compute-restarts
                             arithmetic-error-operation do-symbols make-string-input-stream
                             delete-if-not get-macro-character multiple-value-setq ecase read-line
                             read-char-no-hang read-byte define-method-combination
                             invoke-restart-interactively maphash allocate-instance break shiftf
                             add-method fmakunbound sleep ignore-errors gensym machine-instance
                             defparameter read-char print set-macro-character find-all-symbols
                             force-output nstring-upcase loop-finish cerror disassemble
                             multiple-value-bind dribble write-char macroexpand nsubstitute-if-not
                             ensure-generic-function revappend nsubst-if-not invoke-debugger prog
                             shared-initialize slot-unbound machine-type pprint-tabular pprint-tab
                             mapcon fill copy-symbol method-combination-error do stable-sort
                             declaim macro-function pushnew package-shadowing-symbols
                             make-load-form-saving-slots update-instance-for-different-class
                             make-string-output-stream two-way-stream-output-stream
                             with-standard-io-syntax directory slot-makunbound method-qualifiers
                             close compile-file make-echo-stream pprint copy-pprint-dispatch eval
                             psetf listen format file-string-length remove-method symbol-package
                             invalid-method-error with-simple-restart delete-if rplaca
                             pprint-newline remhash y-or-n-p restart-name package-used-by-list
                             delete defmethod handler-case describe yes-or-no-p prin1-to-string
                             make-synonym-stream broadcast-stream-streams when time
                             get-internal-run-time ccase delete-duplicates mapcan invoke-restart
                             fdefinition remf simple-condition-format-arguments call-method
                             adjust-array function-lambda-expression replace export delete-package
                             set-dispatch-macro-character echo-stream-output-stream
                             two-way-stream-input-stream with-open-stream get-internal-real-time
                             software-version with-compilation-unit do-all-symbols
                             arithmetic-error-operands update-instance-for-redefined-class push
                             symbol-value cond defpackage readtable-case fresh-line probe-file
                             slot-missing apropos-list file-write-date with-hash-table-iterator
                             make-random-state ed make-two-way-stream get-decoded-time
                             set-pprint-dispatch continue compute-applicable-methods load peek-char
                             apropos require nset-exclusive-or truename ctypecase unintern import
                             delete-file nstring-downcase find-symbol rplacd nunion
                             initialize-instance define-compiler-macro signal clrhash
                             type-error-datum lisp-implementation-type nsublis
                             get-dispatch-macro-character defgeneric etypecase unexport
                             get-setf-expansion error muffle-warning documentation symbol-function
                             make-instance no-next-method incf inspect defconstant vector-push
                             define-symbol-macro read define-condition prog* return load-time-value
                             define-modify-macro pathname-name read-from-string room write-line
                             file-position nreconc defvar macroexpand-1 vector-push-extend
                             package-error-package clear-output prog2 untrace with-output-to-string
                             ensure-directories-exist namestring cell-error-name decf
                             pprint-logical-block make-instances-obsolete get-output-stream-string
                             random and case find-restart use-value proclaim flet deftype
                             do-external-symbols set make-package dotimes mapl set-syntax-from-char
                             nreverse write-string pop file-namestring get-universal-time compile
                             gentemp stream-error-stream restart-case make-concatenated-stream
                             defclass macrolet find-package write-byte read-delimited-list open
                             compiler-macro-function make-load-form shadow let* princ
                             describe-object rotatef with-slots abort mapc change-class
                             pprint-exit-if-list-exhausted terpri symbol-macrolet
                             with-input-from-string provide find-method block unread-char
                             nsubstitute make-condition typecase nsubst software-type write
                             translate-pathname intern read-preserving-whitespace psetq pprint-pop
                             unuse-package throw assert with-accessors pprint-dispatch
                             make-dispatch-macro-character remprop handler-bind
                             print-not-readable-object do* the read-sequence
                             print-unreadable-object loop define-setf-expander warn in-package
                             pprint-fill logical-pathname-translations prog1 prin1 pprint-indent
                             with-open-file nbutlast sort write-sequence map-into shadowing-import
                             check-type short-site-name machine-version class-name defsetf
                             write-to-string))

(defun test ()
  (while *names*
    (let ((browse-url-browser-function #'browse-url-default-macosx-browser)
          (name (nth *i* *names*)))
      (print name)
      (slime-hyperspec-lookup (symbol-name name))
      (let ((char (read-char)))
        (cond
         ((= char 121) (push name *pure*) (incf *i*))
         ((= char 110) (push name *impure*) (incf *i*))
         ((= char 113) (return)))))))

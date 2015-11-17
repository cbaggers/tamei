Tamei
=====

`Tamei (Hebrew adjective, "ritually impure")` :)

Tamei is a very simple project, it splits common lisp into 6 packages:

- **pure forms:** functions or macros that do not modify the inputs or perform visible flow control, and that only operate on their arguments. e.g. > equal sqrt
- **impure forms:** function or macros that mutate their input in any way, or rely on data other than from it's arguments, EXCLUDING IO, because we are keeping that in the next package. e.g. nconc, setf
- **IO forms:** also impure but because they perform IO they are in their own package.
- **top level forms:** all forms that, according to the spec, are only meant to be used at the top level
- **pure flow control:** control flow forms where the jumps are within the form only e.g. if, case
- **impure flow control:** forms which can cause a jump outside of itself. e.g. abort, return

It does not add/remove any features to/from common lisp. It purely exists to differentiate.

Notes on progress
=================
Issues over the concept have be raised and are interesting. These include:
- Categorising over purity is a mistake as destructive things can be used purely (nconc on freshly cons'd lists)
- "Does binding count as meta-level side-effects? Binding of top-level variables? Binding of special variables? Binding of lexical variables? Handling conditions?"

I like these and while I will be continuing on this, I do need to come up with better categorizations. This doesnt slow this project down as recategorising will be easier once this initial work is done.



Want to contribute?
===================
That's awesome! thankyou. The best way for us to get this done quickly is the following

- Fork the repo
- Raise an issue (on this repo) saying which batch you want to complete. This makes sure we don't duplicate each other's work.
- For each symbol in your chosen batch look at the hyperspec to see if it is top level define, pure or impure and add the export for the symbol to the correct package.
- Remove the batch you chose from the `Symbols still to categorize` list below
- Create a pull request referencing the issue.
- I'll close the issue after pulling in the change.

If you symbol does not fit one of the categories please add it symbol to the `other.md` file.

Exceptions are so woven into the fabric of the language that to treat them as impure would mean no functions would be considered pure. To this end I only treat functions whose primary purpose is related to exceptions to be impure.

The symbols only refer to functions and macros, any collision with restarts, format symbols etc are coincidental and not relevent to this project

Be as harsh as possible, if it is 'almost always pure EXCEPT when x' then it is impure. If it is 'impure but can also do IO' then it's an IO form. If it can jump local but can also jump outside itself then it's impure flow control. You get the idea :)

Dont like the categories?
=========================
Let me know, Im happy to tweak this as long as it stays in line with the original goals

Symbols still to categorize
===========================

batch 2: (adjustable-array-p allocate-instance alpha-char-p alphanumericp and append apply apropos apropos-list aref)

batch 3: (arithmetic-error-operands arithmetic-error-operation array-dimension array-dimensions array-displacement array-element-type array-has-fill-pointer-p array-in-bounds-p array-rank array-row-major-index)

batch 4: (array-total-size arrayp ash asin asinh assert assoc assoc-if assoc-if-not atan)

batch 6: (bit-not bit-orc1 bit-orc2 bit-vector-p bit-xor block boole both-case-p boundp break)

batch 7: (broadcast-stream-streams butlast byte byte-position byte-size caaaar caaadr caaar caadar caaddr)

batch 18: (defclass defconstant defgeneric define-compiler-macro define-condition define-method-combination define-modify-macro define-setf-expander define-symbol-macro defmacro)

batch 19: (defmethod defpackage defparameter defsetf defstruct deftype defun defvar delete delete-duplicates)

batch 20: (delete-file delete-if delete-if-not delete-package denominator deposit-field describe describe-object destructuring-bind digit-char)

batch 21: (digit-char-p directory directory-namestring disassemble do do* do-all-symbols do-external-symbols do-symbols documentation)

batch 22: (dolist dotimes dpb dribble ecase echo-stream-input-stream echo-stream-output-stream ed eighth elt)

batch 23: (encode-universal-time endp enough-namestring ensure-directories-exist ensure-generic-function eq eql equal equalp error)

batch 24: (etypecase eval eval-when evenp every exp export expt fboundp fceiling)

batch 25: (fdefinition ffloor fifth file-author file-error-pathname file-length file-namestring file-position file-string-length file-write-date)

batch 26: (fill fill-pointer find find-all-symbols find-class find-if find-if-not find-method find-package find-restart)

batch 27: (find-symbol finish-output first flet float float-digits float-precision float-radix float-sign floatp)

batch 28: (floor fmakunbound force-output format formatter fourth fresh-line fround ftruncate funcall)

batch 29: (function function-keywords function-lambda-expression functionp gcd gensym gentemp get get-decoded-time get-dispatch-macro-character)

batch 30: (get-internal-real-time get-internal-run-time get-macro-character get-output-stream-string get-properties get-setf-expansion get-universal-time getf gethash go)

batch 33: (integer-decode-float integer-length integerp interactive-stream-p intern intersection invalid-method-error invoke-debugger invoke-restart invoke-restart-interactively)

batch 34: (isqrt keywordp labels lambda last lcm ldb ldb-test ldiff length)

batch 35: (let let* lisp-implementation-type lisp-implementation-version list list* list-all-packages list-length listen listp)

batch 36: (load load-logical-pathname-translations load-time-value locally log logand logandc1 logandc2 logbitp logcount)

batch 37: (logeqv logical-pathname logical-pathname-translations logior lognand lognor lognot logorc1 logorc2 logtest)

batch 38: (logxor long-site-name loop loop-finish lower-case-p machine-instance machine-type machine-version macro-function macroexpand)

batch 39: (macroexpand-1 macrolet make-array make-broadcast-stream make-concatenated-stream make-condition make-dispatch-macro-character make-echo-stream make-hash-table make-instance)

batch 46: (nstring-upcase nsublis nsubst nsubst-if nsubst-if-not nsubstitute nsubstitute-if nsubstitute-if-not nth nth-value)

batch 47: (nthcdr null numberp numerator nunion oddp open open-stream-p or output-stream-p)

batch 48: (package-error-package package-name package-nicknames package-shadowing-symbols package-use-list package-used-by-list packagep pairlis parse-integer parse-namestring)

batch 49: (pathname pathname-device pathname-directory pathname-host pathname-match-p pathname-name pathname-type pathname-version pathnamep peek-char)

batch 50: (phase plusp pop position position-if position-if-not pprint pprint-dispatch pprint-exit-if-list-exhausted pprint-fill)

batch 51: (pprint-indent pprint-linear pprint-logical-block pprint-newline pprint-pop pprint-tab pprint-tabular prin1 prin1-to-string princ)

batch 52: (princ-to-string print print-not-readable-object print-object print-unreadable-object probe-file proclaim prog prog* prog1)

batch 54: (random-state-p rassoc rassoc-if rassoc-if-not rational rationalize rationalp read read-byte read-char)

batch 55: (read-char-no-hang read-delimited-list read-from-string read-line read-preserving-whitespace read-sequence readtable-case readtablep realp realpart)

batch 56: (reduce reinitialize-instance rem remf remhash remove remove-duplicates remove-if remove-if-not remove-method)

batch 57: (remprop rename-file rename-package replace require rest restart-bind restart-case restart-name return)

batch 58: (return-from revappend reverse room rotatef round row-major-aref rplaca rplacd sbit)

batch 59: (scale-float schar search second set set-difference set-dispatch-macro-character set-exclusive-or set-macro-character set-pprint-dispatch)

batch 64: (string string-capitalize string-downcase string-equal string-greaterp string-left-trim string-lessp string-not-equal string-not-greaterp string-not-lessp)

batch 66: (sublis subseq subsetp subst subst-if subst-if-not substitute substitute-if substitute-if-not subtypep)

batch 67: (svref sxhash symbol-function symbol-macrolet symbol-name symbol-package symbol-plist symbol-value symbolp synonym-stream-symbol)

batch 68: (tagbody tailp tan tanh tenth terpri the third throw time)

batch 69: (trace translate-logical-pathname translate-pathname tree-equal truename truncate two-way-stream-input-stream two-way-stream-output-stream type-error-datum type-error-expected-type)

batch 70: (type-of typecase typep unbound-slot-instance unexport unintern union unless unread-char untrace)

batch 71: (unuse-package unwind-protect update-instance-for-different-class update-instance-for-redefined-class upgraded-array-element-type upgraded-complex-part-type upper-case-p use-package use-value user-homedir-pathname)

batch 73: (with-accessors with-compilation-unit with-condition-restarts with-hash-table-iterator with-input-from-string with-open-file with-open-stream with-output-to-string with-package-iterator with-simple-restart)

batch 75: (yes-or-no-p zerop)

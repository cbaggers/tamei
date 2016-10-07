(named-readtables:in-readtable :fn.reader)

(defparameter *pure*
  '(;; predicates

    adjustable-array-p alpha-char-p alphanumericp array-has-fill-pointer-p
    array-in-bounds-p arrayp bit-vector-p both-case-p boundp
    char-greaterp char-lessp char-not-greaterp char-not-lessp
    characterp compiled-function-p complexp consp constantp
    digit-char-p endp equalp evenp fboundp floatp functionp
    graphic-char-p hash-table-p input-stream-p integerp
    interactive-stream-p keywordp listp logbitp lower-case-p
    minusp numberp oddp open-stream-p output-stream-p
    packagep plusp random-state-p rationalp readtablep realp
    simple-bit-vector-p simple-string-p simple-vector-p
    slot-boundp slot-exists-p special-operator-p
    standard-char-p streamp string-greaterp string-lessp
    string-not-greaterp string-not-lessp stringp subsetp
    subtypep symbolp tailp typep upper-case-p vectorp zerop


    ;; Arrays
    make-array vector

    aref row-major-aref svref

    array-dimension array-dimensions array-displacement array-rank
    array-row-major-index array-total-size fill-pointer

    array-element-type upgraded-array-element-type

    bit-and bit-andc1 bit-andc2 bit-eqv bit-ior bit-nand bit-nor bit-not
    bit-orc1 bit-orc2 bit-xor sbit


    ;; Conses
    caaaar caaadr caaar caadar caaddr caadr caar cadaar cadadr cadar caddar
    cadddr caddr cadr car cdaaar cdaadr cdaar cdadar cdaddr cdadr cdar cddaar
    cddadr cddadr cddar cdddar cddddr cdddr cddr cdr mapcar nthcdr

    cons adjoin append

    get-properties

    acons assoc assoc-if assoc-if-not copy-alist rassoc rassoc-if rassoc-if-not
    pairlis sublis

    first second third fourth fifth sixth seventh eighth ninth tenth

    copy-list list list* list-length make-list maplist

    member member-if member-if-not
    subst subst-if subst-if-not

    intersection set-difference set-exclusive-or union

    nth rest last butlast ldiff

    copy-tree tree-equal

    atom null


    ;; Data and Control Flow
    identity complement

    not eq eql equal

    apply funcall

    multiple-value-list nth-value values values-list

    every notany notevery some constantly


    ;; Hash Tables
    gethash hash-table-count hash-table-rehash-size hash-table-rehash-threshold
    hash-table-size hash-table-test make-hash-table sxhash


    ;; Numbers
    > - <= + * < 1+ /= = >= 1- /
    exp log abs max min
    boole dpb ldb gcd lcm cis bit ash

    cos acos acosh cosh
    sin asin asinh sinh
    tan atan atanh tanh

    fceiling ffloor floor fround ftruncate mod rem round truncate

    decode-float float float-digits float-precision float-radix float-sign
    integer-decode-float scale-float

    imagpart realpart upgraded-complex-part-type

    logand logandc1 logandc2 logcount logeqv logior lognand lognor lognot
    logorc1 logorc2 logtest logxor

    byte byte-position byte-size

    expt integer-length isqrt numerator rational rationalize
    signum sqrt ceiling complex conjugate ldb-test denominator deposit-field
    mask-field parse-integer phase


    ;; Sequences
    copy-seq make-sequence subseq concatenate

    elt map reduce reverse

    length

    search mismatch

    find find-if find-if-not

    count count-if count-if-not

    position position-if position-if-not

    remove remove-duplicates remove-if remove-if-not

    substitute substitute-if substitute-if-not


    ;; Symbols (getf is an accessor..does that matter?)
    get getf symbol-plist symbol-name


    ;; Characters
    name-char code-char digit-char char-code char-downcase char-equal char-int
    char-name char-not-equal char-upcase char/= char< char<= char= char> char>=
    character


    ;; Strings
    schar char make-string string string-capitalize
    string-downcase string-equal string-left-trim string-not-equal
    string-right-trim string-trim string-upcase string/= string< string<=
    string= string> string>=


    ;; Objects
    unbound-slot-instance slot-value class-of


    ;; Files
    file-author file-error-pathname


    ;; Packages
    package-name package-nicknames


    ;; Environment
    decode-universal-time encode-universal-time
    lisp-implementation-version


    ;; Conditions
    simple-condition-format-control


    ;; Streams
    stream-element-type stream-external-format synonym-stream-symbol

    ;; Structures
    copy-structure

    ;; Types and Classes
    coerce type-of

    ;; Reader
    copy-readtable

    ;; Printer
    formatter
    ))

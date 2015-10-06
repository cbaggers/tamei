;;;; package containing all IO forms from common lisp
;;;; Also impure forms but can perfrom IO

(defpackage #:cl-impure-io
  (:use #:tamei-common)
  (:import-from :cl
                #:with-standard-io-syntax
                #:write
                #:write-byte
                #:write-char
                #:write-line
                #:write-sequence
                #:write-string
                #:write-to-string
                #:y-or-n-p
                #:clear-input
                #:clear-output
                #:close)
  (:export
   #:with-standard-io-syntax
   #:write
   #:write-byte
   #:write-char
   #:write-line
   #:write-sequence
   #:write-string
   #:write-to-string
   #:y-or-n-p
   #:clear-input
   #:clear-output
   #:close))

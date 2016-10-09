(uiop:define-package #:tamei.constants (:use)
  (:import-from
   :cl
   :export
   ;;
   ;; Arrays
   :array-dimension-limit
   :array-rank-limit
   :array-total-size-limit

   ;;
   ;; Characters
   :char-code-limit

   ;;
   ;; Data and Control Flow
   :call-arguments-limit
   :lambda-list-keywords
   :lambda-parameters-limit
   :multiple-values-limit
   :nil
   :t

   ;;
   ;; Environment
   :internal-time-units-per-second

   ;;
   ;; Numbers
   :boole-1
   :boole-2
   :boole-and
   :boole-andc1
   :boole-andc2
   :boole-c1
   :boole-c2
   :boole-clr
   :boole-eqv
   :boole-ior
   :boole-nand
   :boole-nor
   :boole-orc1
   :boole-orc2
   :boole-set
   :boole-xor
   :double-float-epsilon
   :double-float-negative-epsilon
   :least-negative-double-float
   :least-negative-long-float
   :least-negative-normalized-double-float
   :least-negative-normalized-long-float
   :least-negative-normalized-short-float
   :least-negative-normalized-single-float
   :least-negative-short-float
   :least-negative-single-float
   :least-positive-double-float
   :least-positive-long-float
   :least-positive-normalized-double-float
   :least-positive-normalized-long-float
   :least-positive-normalized-short-float
   :least-positive-normalized-single-float
   :least-positive-short-float
   :least-positive-single-float
   :long-float-epsilon
   :long-float-negative-epsilon
   :most-negative-double-float
   :most-negative-fixnum
   :most-negative-long-float
   :most-negative-short-float
   :most-negative-single-float
   :most-positive-double-float
   :most-positive-fixnum
   :most-positive-long-float
   :most-positive-short-float
   :most-positive-single-float
   :pi
   :short-float-epsilon
   :short-float-negative-epsilon
   :single-float-epsilon
   :single-float-negative-epsilon)
  (:export
   ;;
   ;; Arrays
   :array-dimension-limit
   :array-rank-limit
   :array-total-size-limit

   ;;
   ;; Characters
   :char-code-limit

   ;;
   ;; Data and Control Flow
   :call-arguments-limit
   :lambda-list-keywords
   :lambda-parameters-limit
   :multiple-values-limit
   :nil
   :t

   ;;
   ;; Environment
   :internal-time-units-per-second

   ;;
   ;; Numbers
   :boole-1
   :boole-2
   :boole-and
   :boole-andc1
   :boole-andc2
   :boole-c1
   :boole-c2
   :boole-clr
   :boole-eqv
   :boole-ior
   :boole-nand
   :boole-nor
   :boole-orc1
   :boole-orc2
   :boole-set
   :boole-xor
   :double-float-epsilon
   :double-float-negative-epsilon
   :least-negative-double-float
   :least-negative-long-float
   :least-negative-normalized-double-float
   :least-negative-normalized-long-float
   :least-negative-normalized-short-float
   :least-negative-normalized-single-float
   :least-negative-short-float
   :least-negative-single-float
   :least-positive-double-float
   :least-positive-long-float
   :least-positive-normalized-double-float
   :least-positive-normalized-long-float
   :least-positive-normalized-short-float
   :least-positive-normalized-single-float
   :least-positive-short-float
   :least-positive-single-float
   :long-float-epsilon
   :long-float-negative-epsilon
   :most-negative-double-float
   :most-negative-fixnum
   :most-negative-long-float
   :most-negative-short-float
   :most-negative-single-float
   :most-positive-double-float
   :most-positive-fixnum
   :most-positive-long-float
   :most-positive-short-float
   :most-positive-single-float
   :pi
   :short-float-epsilon
   :short-float-negative-epsilon
   :single-float-epsilon
   :single-float-negative-epsilon))

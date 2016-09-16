
(defun get-symbols (&optional (package 'cl))
  (let (sym)
    (do-external-symbols (x package)
      (push x sym))
    sym))

(defun filt (x)
  (and (fboundp x)
       (not (special-operator-p x))
       (not (macro-function 'let))))

(defun funcs ()
  (remove-if-not #'filt (get-symbols)))

(defun paths (x)
  (let ((s (symbol-name x)))
    (or (search "NAMESTRING" s)
        (search "PATH" s))))

(defparameter *path-funcs* (remove-if-not #'paths (funcs)))

;; we need to separate clos is some fashion
;; also streams, io, symbols
(defparameter *clos*)

;; issue is funcs like #'open which takes a file spec
;;
;; (defun files (x)
;;   (let ((s (symbol-name x)))
;;     (or (search "FILE" s))))

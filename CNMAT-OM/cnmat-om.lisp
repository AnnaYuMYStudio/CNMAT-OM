;;;==================================
;;; An OM library with CNMAT tools
;;;==================================

(defpackage "CNMAT"
  (:use "COMMON-LISP" "OM")
  (:export 
   :get-combi 
   :get-rotations
   :canon-query 
   :rotation-canon-query
   :sum-lists))

(in-package :om)

(compile&load (om-relative-path '("src") "rhythmic-frames"))
(compile&load (om-relative-path '("src") "combinations"))
(compile&load (om-relative-path '("src") "sum-lists"))


(set-lib-release 0.1)

(doc-library "CNMAT-OM contains compositional tools collected from CNMAT researh and projects.")

(om-print "
;;;================================================
;;; CNMAT-OM
;;; (c) Center for New Music and Audio Technologies
;;; University of California, Berkeley
;;;================================================
")


;;;==================================
;;; LIB INTERFACE (MENU ITEMS ETC.)
;;;==================================

(in-package :cnmat)

(let ((this-lib (om::find-library "CNMAT-OM")))
  (om::addgenfun2pack '(get-combi get-rotations canon-query sum-lists) this-lib))

;;; evaluate this to generate the HTML reference
;;; (gen-lib-reference (find-library "CNMAT-OM"))
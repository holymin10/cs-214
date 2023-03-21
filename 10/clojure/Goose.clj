;;;; Goose.clj provides a Goose "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;; Completed by: Sungmin Choi (sc94)
;; Date: March 20, 2023
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as 'superclass')
(load "Bird")
; Replace this line with one that loads module "Bird"
(defrecord Goose [^Bird name] )

;; define 'Goose' as 'subclass' of Bird

; Replace this line with one that declares a Goose record-type


;;; Goose constructors
;;; - default: no args
;;;   Postcondition: name == a default value. 
;;; - explicit1:
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Goose
  ([]                (->Goose "Ann Onymous"))
  ([^String itsName] (->Goose itsName))
)


;;; method to retrieve a Goose's class
;;; Receive: this, a Goose object.
;;; Return: "Goose".
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod getClass Goose [ _ ]
  "Goose"
)

;;; method to retrieve a Goose's call
;;; Receive: this, a Goose object.
;;; Return: "Honk!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defmethod getCall Goose [ _ ]
  "Honk!"
)



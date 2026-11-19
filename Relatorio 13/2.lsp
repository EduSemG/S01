; Ex 2

(defstruct criatura
  nome
  bioma
  profundidade
  perigo)

; catalogo global
(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper" :bioma "Safe Shallows"
                  :profundidade 15 :perigo :inofensiva)
   (make-criatura :nome "Stalker" :bioma "Kelp Forest"
                  :profundidade 50 :perigo :agressiva)
   (make-criatura :nome "Crabsnake" :bioma "Crash Zone"
                  :profundidade 150 :perigo :agressiva)
   (make-criatura :nome "Reaper Leviathan" :bioma "Dunes"
                  :profundidade 200 :perigo :leviata)
   (make-criatura :nome "Ghost Leviathan" :bioma "Lost River"
                  :profundidade 400 :perigo :leviata)))

(defun texto-do-perigo (perigo)
  (case perigo
    (:inofensiva "Inofensiva")
    (:agressiva  "Agressiva")
    (:leviata    "Leviata: mantehna distancia")
    (otherwise   "Desconhecido")))

; format nil devolve
(defun descreve-criatura (c)
  (format nil "~a - Bioma: ~a - ~am - ~a"
          (criatura-nome c)
          (criatura-bioma c)
          (criatura-profundidade c)
          (texto-do-perigo (criatura-perigo c))))

(defun abaixo-de (metros catalogo)
  (remove-if-not (lambda (c) (> (criatura-profundidade c) metros))
                 catalogo))

(defun main ()
  (format t "--- Catalogo ---~%")
  (dolist (texto (mapcar #'descreve-criatura *catalogo*))
    (format t "~a~%" texto))

  ; limite de 100m
  (let ((fundas (abaixo-de 100 *catalogo*)))
    (format t "--- Abaixo de 100m ---~%")
    (dolist (texto (mapcar #'descreve-criatura fundas))
      (format t "~a~%" texto))
    (format t "Total: ~a criaturas~%" (length fundas))))

(main)

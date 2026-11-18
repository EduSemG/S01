; ex 1


; struct
(defstruct erva
  nome
  preco-por-grama
  toxicidade)


; classificacao
(defun classifica-erva (erva)
  (cond ((>= (erva-toxicidade erva) 7) "veneno")
        ((>= (erva-toxicidade erva) 4) "use com cuidado")
        (t "segura")))


; preco
(defun preco-da-dose (erva gramas)
  (* (erva-preco-por-grama erva) gramas))


; monta o texto
(defun descreve-erva (erva)
  (format nil "~a - R$~,2f por grama - ~a"
          (erva-nome erva)
          (erva-preco-por-grama erva)
          (classifica-erva erva)))


(defun aviso (erva)
  (if (>= (erva-toxicidade erva) 7)
      "ATENCAO: a Maomao vai testar essa antes"
      "Liberada para o paciente."))


; main
(defun main ()
  ; uma erva de cada
  (let ((ervas (list (make-erva :nome "Camomila"
                                :preco-por-grama 0.8
                                :toxicidade 1)
                     (make-erva :nome "Hortela"
                                :preco-por-grama 4
                                :toxicidade 5)
                     (make-erva :nome "Cesio"
                                :preco-por-grama 12.75
                                :toxicidade 9))))

    (format t "--- Ervas ---~%")
    (dolist (e ervas)
      (format t "~a~%" (descreve-erva e))
      (format t "  ~a~%" (aviso e)))

    ; dose de 10g da erva 1
    (format t "--- Preco de uma dose ---~%")
    (format t "10g de ~a: R$~,2f~%"
            (erva-nome (car ervas))
            (preco-da-dose (car ervas) 10))))

(main)

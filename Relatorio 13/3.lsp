; Ex 3

(defstruct garota-magica
  nome
  escuridao
  bruxas)

; recursao com car/cdr
(defun escuridao-total (grupo)
  (if (null grupo)
      0
      (+ (garota-magica-escuridao (car grupo))
         (escuridao-total (cdr grupo)))))

; reduce e mapcar
(defun total-de-bruxas (grupo)
  (reduce #'+ (mapcar #'garota-magica-bruxas grupo)))

; garota nova
(defun purifica (g quantidade)
  (let ((escuridao (garota-magica-escuridao g)))
    (make-garota-magica :nome (garota-magica-nome g)
                        :escuridao (if (>= quantidade escuridao)
                                       0
                                       (- escuridao quantidade))
                        :bruxas (garota-magica-bruxas g))))

(defun main ()
  (let* ((mami (make-garota-magica :nome "Mami" :escuridao 35 :bruxas 12))
         (sayaka (make-garota-magica :nome "Sayaka" :escuridao 70 :bruxas 4))
         (kyoko (make-garota-magica :nome "Kyoko" :escuridao 50 :bruxas 9))
         (grupo (list mami sayaka kyoko))
         (madoka (make-garota-magica :nome "Madoka" :escuridao 10 :bruxas 1))
         (novo-grupo (cons madoka grupo))
         (limpa (purifica sayaka 30)))

    (format t "--- Grupo ---~%")
    (dolist (g grupo)
      (format t "~a - escuridao ~a - ~a bruxas derrotadas~%"
              (garota-magica-nome g)
              (garota-magica-escuridao g)
              (garota-magica-bruxas g)))
    (format t "Escuridao total: ~a~%" (escuridao-total grupo))
    (format t "Bruxas derrotadas: ~a~%" (total-de-bruxas grupo))

    ; cons na frente
    (format t "--- Novo contrato ---~%")
    (format t "~a entrou no grupo~%" (garota-magica-nome madoka))
    (format t "Escuridao do grupo original: ~a~%" (escuridao-total grupo))
    (format t "Escuridao do grupo novo: ~a~%" (escuridao-total novo-grupo))

    (format t "--- Purificacao ---~%")
    (format t "~a original: ~a~%"
            (garota-magica-nome sayaka)
            (garota-magica-escuridao sayaka))
    (format t "~a nova: ~a~%"
            (garota-magica-nome limpa)
            (garota-magica-escuridao limpa))))

(main)

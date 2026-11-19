; Ex 4

(defstruct dominio
  nome
  elemento
  dificuldade
  mora)

(defun bonus-elemental (elemento)
  (case elemento
    (:electro 1.5)
    (:hydro 1.2)
    (otherwise 1)))

(defun recompensa-final (d)
  (* (dominio-mora d) (bonus-elemental (dominio-elemento d))))

; let* em sequencia
(defun rota (lista dificuldade-maxima)
  (let* ((possiveis (remove-if-not
                     (lambda (d) (<= (dominio-dificuldade d) dificuldade-maxima))
                     lista))
         (textos (mapcar
                  (lambda (d)
                    (format nil "~a - ~,1f mora"
                            (dominio-nome d)
                            (recompensa-final d)))
                  possiveis)))
    textos))

(defun main ()
  (let ((dominios (list (make-dominio :nome "Fenda Esquecida" :elemento :pyro
                                      :dificuldade 2 :mora 5000)
                        (make-dominio :nome "Corte Violeta" :elemento :electro
                                      :dificuldade 4 :mora 8000)
                        (make-dominio :nome "Palacio das Ondas" :elemento :hydro
                                      :dificuldade 3 :mora 6000)
                        (make-dominio :nome "Caverna Gelada" :elemento :cryo
                                      :dificuldade 5 :mora 10000)
                        (make-dominio :nome "Vale dos Ventos" :elemento :anemo
                                      :dificuldade 1 :mora 3000))))

    (format t "--- Rota ate dificuldade 4 ---~%")
    (dolist (texto (rota dominios 4))
      (format t "~a~%" texto))

    ; reduce e mapcar
    (format t "--- Total de mora ---~%")
    (format t "Mora da lista inteira: ~,1f~%"
            (reduce #'+ (mapcar #'recompensa-final dominios)))

    ; setf muda copia
    (format t "--- Copia ---~%")
    (let ((copia (copy-dominio (car dominios))))
      (setf (dominio-mora copia) 9999)
      (format t "~a (copia): ~a~%"
              (dominio-nome copia)
              (dominio-mora copia))
      (format t "~a (original): ~a~%"
              (dominio-nome (car dominios))
              (dominio-mora (car dominios))))))

(main)

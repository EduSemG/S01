-- esbocos

-- tipo do esboco
data Esboco = Esboco
  { titulo :: String
  , tecnica :: String
  , horas :: Int
  }

-- titulo e tecnica do primeiro da lista
esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente [] = "O caderno esta vazio."
esbocoMaisRecente (e:_) = titulo e ++ " - " ++ tecnica e

-- conta os esbocos
contarEsbocos :: [Esboco] -> Int
contarEsbocos [] = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

-- soma as horas do primeiro c o resto
horasDesenhando :: [Esboco] -> Int
horasDesenhando [] = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  -- o primeiro é o mais recente
  let caderno =
        [ Esboco { titulo = "Monalisa", tecnica = "Tinta", horas = 10 }
        , Esboco { titulo = "O grito", tecnica = "Lapis", horas = 3 }
        , Esboco { titulo = "Noite estrelada", tecnica = "Carvao", horas = 4 }
        ]

  putStrLn "--- Caderno ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno))
  putStrLn ("Total de horas: " ++ show (horasDesenhando caderno))
  -- caderno vazio
  putStrLn (esbocoMaisRecente [])

  -- caderno novo
  let novo = Esboco { titulo = "Noite estrelada", tecnica = "Carvao", horas = 4 }
  let cadernoNovo = novo : caderno

  putStrLn "--- Caderno novo ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente cadernoNovo)
  putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos cadernoNovo))

  -- anterior
  putStrLn "--- Caderno anterior ---"
  putStrLn ("Mais recente: " ++ esbocoMaisRecente caderno)
  putStrLn ("Quantidade de esbocos: " ++ show (contarEsbocos caderno))

  -- putStrLn (titulo (head []))

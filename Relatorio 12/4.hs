-- casa de banhos

-- etapas
data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

-- tipo do atendimento
data Atendimento = Atendimento
  { cliente :: String
  , servico :: String
  , valor :: Double
  , etapa :: Etapa
  }

-- cliente, servico e etapa
descrever :: Atendimento -> String
descrever a =
  cliente a ++ " - " ++ servico a ++ " - " ++ show (etapa a)

-- etapa concluido
concluir :: Atendimento -> Atendimento
concluir a = a { etapa = Concluido }

-- soma o dos concluidos
arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\a -> etapa a == Concluido) atendimentos))

main :: IO ()
main = do
  -- tres atendimentos, nenhum concluido
  let a1 = Atendimento { cliente = "Leafeon", servico = "Banho de ervas", valor = 40.0, etapa = NoBanho }
  let a2 = Atendimento { cliente = "Hippopotas", servico = "Banho de lama", valor = 100.0, etapa = NoBanho }
  let a3 = Atendimento { cliente = "Lucario", servico = "Massagem", valor = 60.0, etapa = NaFila }

  let lista = [a1, a2, a3]
  -- conclui so dois, o a3 fica igual
  let listaNova = [concluir a1, concluir a2, a3]

  putStrLn "--- Lista original ---"
  mapM_ putStrLn (map descrever lista)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado lista))

  putStrLn ""
  putStrLn "--- Lista nova ---"
  mapM_ putStrLn (map descrever listaNova)
  putStrLn ("Arrecadado: R$ " ++ show (arrecadado listaNova))

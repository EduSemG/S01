-- entregas

-- peso maximo que a vassoura aguenta
pesoMaximo :: Double
pesoMaximo = 10.0
-- pesoMaximo = 20.0

-- tipo da encomenda
data Encomenda = Encomenda
  { destinatario :: String
  , peso :: Double
  , frete :: Double
  }

-- destinatario, peso e frete
descrever :: Encomenda -> String
descrever e =
  destinatario e ++ " : " ++ show (peso e) ++ " kg / frete R$ " ++ show (frete e)

-- so as encomendas que a vassoura aguenta
cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\e -> peso e <= pesoMaximo) encomendas

-- soma dos fretes
totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  -- encomendas
  let encomendas =
        [ Encomenda { destinatario = "Angela", peso = 2.5, frete = 15.0 }
        , Encomenda { destinatario = "Musashi", peso = 12.0, frete = 30.0 }
        , Encomenda { destinatario = "Li Xin", peso = 4.0, frete = 20.0 }
        , Encomenda { destinatario = "Ying", peso = 15.5, frete = 40.0 }
        , Encomenda { destinatario = "Kongming", peso = 7.5, frete = 25.0 }
        ]

  putStrLn "--- Encomendas ---"
  mapM_ putStrLn (map descrever encomendas)

  putStrLn "--- Cabem na vassoura ---"
  mapM_ putStrLn (map descrever (cabemNaVassoura encomendas))

  -- total so das que cabem
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes (cabemNaVassoura encomendas)))

-- cafe

-- tipo do cafe
data Cafe = Cafe String Double Int

-- nome e preco
descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " - R$ " ++ show preco

-- forca do cafe
forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise = "Suave"

-- leite
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido leite (Cafe _ preco _) =
  if leite
    then preco + 2.0
    else preco

main :: IO ()
main = do
  -- cafes
  let cafe1 = Cafe "Luffy" 14.5 9
  let cafe2 = Cafe "Jimbe" 12.0 6
  let cafe3 = Cafe "Chopper" 10.0 3

  putStrLn (descrever cafe1)
  putStrLn ("Forca: " ++ forca cafe1)
  putStrLn (descrever cafe2)
  putStrLn ("Forca: " ++ forca cafe2)
  putStrLn (descrever cafe3)
  putStrLn ("Forca: " ++ forca cafe3)

  -- preco cafe1 com leite e sem
  print (precoDoPedido True cafe1)
  print (precoDoPedido False cafe1)

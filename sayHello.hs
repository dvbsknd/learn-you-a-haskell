reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main = do
  putStrLn "Hi, name please."
  name <- getLine
  putStrLn $ reverse' name

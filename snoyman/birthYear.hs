main = do
  putStrLn "Type your birth year"
  year <- getLine
  putStrLn $ "In 2021, you'll be " ++ show (2021 - read year)

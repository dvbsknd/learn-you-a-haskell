import Text.Read (readMaybe)

main = do
  putStrLn "Type your birth year"
  yearString <- getLine
  case readMaybe yearString of
    Nothing -> putStrLn "Enter a valid year"
    Just year -> putStrLn $ "In 2021, you'll be " ++ show (2021 - year)

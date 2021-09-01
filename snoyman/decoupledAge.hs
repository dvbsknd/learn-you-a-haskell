import Text.Read (readMaybe)

displayAge :: Maybe Int -> IO ()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "Enter a valid year"
        Just year -> putStrLn $ "In 2021, you'll be " ++ show (yearToAge year)

yearToAge :: Int -> Int
yearToAge = (-) 2021

main = do
    putStrLn "Type your birth year"
    yearString <- getLine
    displayAge $ readMaybe yearString

import Text.Read (readMaybe)

displayAge :: Maybe Int -> IO ()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "Enter a valid year"
        Just age -> putStrLn $ "In 2021, you'll be " ++ show age

yearToAge :: Int -> Int
yearToAge = (-) 2021

main = do
    putStrLn "Type your birth year"
    yearString <- getLine
    let maybeAge = do
        yearInt <- readMaybe yearString
        return $ yearToAge yearInt
    displayAge maybeAge

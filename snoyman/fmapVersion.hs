import Text.Read (readMaybe)

displayAge :: Maybe Int -> IO ()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "Invalid input. Try again."
        Just age -> putStrLn $ "In the year specified you'll be " ++ show age

main = do
    putStrLn "Type your birth year"
    birthYearString <- getLine
    putStrLn "Year to check age for"
    checkYearString <- getLine
    let maybeAge = do
        birthYearInt <- readMaybe birthYearString
        checkYearInt <- readMaybe checkYearString
        return $ checkYearInt - birthYearInt
    displayAge maybeAge

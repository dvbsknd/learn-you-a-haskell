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
    let maybeAge =
            case readMaybe birthYearString of
            Nothing -> Nothing
            Just birthYear -> 
                case readMaybe checkYearString of
                    Nothing -> Nothing
                    Just checkYear -> Just (checkYear - birthYear)
    displayAge maybeAge

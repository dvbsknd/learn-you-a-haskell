import Text.Read (readMaybe)

displayAge :: Maybe Int -> IO ()
displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "Invalid input. Try again."
        Just age -> putStrLn $ "In the year specified you'll be " ++ show age

diffYear :: Int -> Int -> Int
diffYear check birth = check - birth

main = do
    putStrLn "Type your birth year"
    birthYearString <- getLine
    putStrLn "Year to check age for"
    checkYearString <- getLine
    let maybeAge = do
        checkYear <- readMaybe checkYearString
        birthYear <- readMaybe birthYearString
        return $
            if checkYear > birthYear
                then diffYear checkYear birthYear
                else diffYear birthYear checkYear
    displayAge maybeAge

returnMaybe = Just

main
    | returnMaybe "Hello" == Just "Hello" = putStrLn "Correct!"
    | otherwise = putStrLn "Incorrect, please try again"

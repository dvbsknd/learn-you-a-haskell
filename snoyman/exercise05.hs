import Text.Read (readMaybe)
import Control.Applicative ((<$>), (<*>))

displayAge maybeAge =
    case maybeAge of
        Nothing -> putStrLn "You provided invalid input"
        Just age -> putStrLn $ "In that year, you will be: " ++ show age

yearDiff futureYear birthYear = futureYear - birthYear

yourHelperFunction f a b
    | a > b = f a b
    | otherwise = f b a

main
    | yourHelperFunction yearDiff 5 6 == 1 = putStrLn "Correct!"
    | otherwise = putStrLn "Please try again"

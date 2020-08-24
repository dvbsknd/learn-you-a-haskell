getCapital :: [Char] -> [Char]
getCapital "" = "I LOVED you. You gave me NOTHING."
getCapital word@(chr:_) = word ++ " starts with " ++ [chr] ++ "!"

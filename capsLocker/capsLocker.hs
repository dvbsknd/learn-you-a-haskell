import Data.Char

main = do
  contents <- getContents
  print $ lines contents
  putStr $ map toUpper contents

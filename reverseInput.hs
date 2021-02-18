import Control.Monad

main = do
  line <- getLine
  when (not . null $ line) $ do
      putSpread $ reverseWords line
      putStrLn ""
      main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

putSpread :: String -> IO ()
putSpread [] = return ()
putSpread (x:xs) = do
  putChar x
  putChar ' '
  putSpread xs

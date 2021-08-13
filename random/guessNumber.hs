import System.Random
import Control.Monad(when, unless)

main = do
  gen <- getStdGen
  askForNumber gen

askForNumber :: StdGen -> IO ()
askForNumber gen = do
  let (randNumber, newGen) = randomR (1,10) gen :: (Int, StdGen)
  putStrLn "Which number between one and ten am I thinking of?"
  numberString <- getLine
  unless (null numberString) $ do
    let number = read numberString
    if randNumber == number
      then putStrLn "Correct."
      else putStrLn $ "Sorry, bud. It was " ++ show randNumber
    askForNumber newGen

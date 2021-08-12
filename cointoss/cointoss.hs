import System.Random

threeCoins :: StdGen -> (Bool, Bool, Bool)
threeCoins gen = 
  let (firstCoin, nextGen) = random gen
      (secondCoin, nextNextGen) = random nextGen
      (thirdCoin, _) = random nextNextGen
  in  (firstCoin, secondCoin, thirdCoin)

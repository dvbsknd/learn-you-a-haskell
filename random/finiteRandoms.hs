import System.Random

finiteRandoms :: (RandomGen g, Random a) => Int -> g -> ([a], g)
finiteRandoms 0 gen = ([], gen)
finiteRandoms n gen =
  let (value, newGen) = random gen
      (rest, finalGen) = finiteRandoms (n - 1) newGen
  in  (value:rest, finalGen) 

-- How many elements does it take for the 
-- sum of the roots of all natural numbers 
-- to exceed 1000?

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

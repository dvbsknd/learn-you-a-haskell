maxi :: (Ord a) => [a] -> a
maxi [] = error "An empty list has no maximum value"
maxi [x] = x
maxi (x:xs)
  | x > tailMax = x
  | otherwise = maxi xs
  here tailMax = maxi xs

-- http://learnyouahaskell.com/higher-order-functions#maps-and-filters
sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

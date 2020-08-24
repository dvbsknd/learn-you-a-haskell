myComp :: (Ord a) => a -> a -> Ordering
myComp a b
    | a > b = GT
    | a < b = LT
    | otherwise = EQ

-- elem checks whether an element is a member of a list
elem' :: (Eq a) => a -> [a] -> Bool
elem' x xs = foldl (\acc y -> if y == x then True else acc) False xs

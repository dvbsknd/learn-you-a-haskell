quickSort :: (Ord a) => [a] -> [a]
-- ...where a has typeclass of Ord
-- Edge case: if the array's empty
-- then return an empty array
quickSort [] = []
-- Pattern match the first and rest of
-- the array to work with
quickSort (x:xs) =
    -- smallerSorted is a recursive quickSort
    -- of all items less than or equal to the
    -- first item, x
    let smallerSorted = quickSort (filter (<=x) xs)
        -- Similarly, biggerSorted is the recursive
        -- quickSort of all the items in the rest
        -- of the array bigger than x
        biggerSorted = quickSort (filter (>x) xs)
    -- So we can say that the result is the sort of
    -- everything smaller than x, then x, then the
    -- sort of everything bigger than x
    in  smallerSorted ++ [x] ++ biggerSorted

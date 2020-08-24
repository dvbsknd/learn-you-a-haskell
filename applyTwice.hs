applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x) 

-- applyTwice = \f -> \x -> f (f x)
-- -- Let's apply it:
-- applyTwice (\x -> x + 1) 2
-- (applyTwice (\x -> x + 1)) 2
-- (\x -> ((\x -> x + 1) ((\x -> x + 1) x))) 2
-- (\x -> ((\x -> x + 1) ((\x -> x + 1) 2)))
-- (\x -> ((\x -> x + 1) (2 + 1)))
-- (\x -> ((\x -> x + 1) 3))
-- (\x -> (3 + 1))
-- (\x -> 4)
-- 4

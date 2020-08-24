-- Find the largest number under 10,000 that's 
-- divisible by 3829:

-- The function takes no arguments, but returns
-- a value of type a, which is of typeclass Integral
largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = mod x 3829 == 0

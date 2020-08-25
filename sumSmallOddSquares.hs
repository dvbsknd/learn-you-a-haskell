-- Find the sum of all odd squares that are smaller than 10,000

-- Function version
sum (takeWhile (<10000) (filter odd (map (^2) [1..])))

-- List comprehension version
sum (takeWhile (<10000) ([x^2 | x <- [1..], odd (x^2)]))

maximum' :: (Num a, Ord a) => [a] -> a
maximum' [] = error "Empty list"
maximum' [x] = x
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs

maximum'' :: (Num a, Ord a) => [a] -> a
maximum'' [] = error "Empty list"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum'' xs)

replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x

take' :: (Num i, Ord i) => i -> [a] -> [a]
-- This tell us that we should ignore the second parameter for this case.
take' n _ 
    | n <= 0   = []
-- This tells us that we should ignore the first paramter for this case.
take' _ []     = []
-- Every time we recurse down we minus n to result in a edge condition later on.
take' n (x:xs) = x : take' (n-1) xs

-- Reverse a list.
reverse' :: [a] -> [a]
-- The edge case condition is a empty array.
reverse' [] = []
-- Pattern match the list and split it into x : xs : []
-- Then reverse 
reverse' (x:xs) = reverse' xs ++ [x]

repeat' :: a -> [a]
repeat' x = x:repeat' x

zip' :: [a] -> [b] -> [(a, b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' a (x:xs) 
    | a == x = True
    | otherwise = a `elem'` xs

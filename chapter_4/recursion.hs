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

-- Haskell knows each parameter.
-- Each function call that dosent finish its parameters
-- will return "curry" the function.
-- However must assign it to another function or definition.
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwo :: (Num a) => a -> a -> a
multTwo = multThree 1

multByNine :: (Num a) => a -> a -> a
multByNine = multThree 9

divideByTen :: (Floating a) => a -> a  
divideByTen = (/10) 

divideByTen' :: (Floating a) => a -> a  
divideByTen' x = (/) x 10 

divideByTen'' :: (Floating a) => a -> a  
divideByTen'' = (/) 10 

isUpperAlphanum :: Char -> Bool  
isUpperAlphanum = (`elem` ['A'..'Z'])  

isUpperAlphanum' :: Char -> Bool  
isUpperAlphanum' = (`elem` ['A'..'Z'])  

isSetOfTen :: Int -> Bool
isSetOfTen x = x `elem` [1..10]

isSetOfTen' :: Int -> Bool
isSetOfTen' = (`elem` [1..10])

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]  
zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys 

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x) 

applyThrice :: (a -> a) -> a -> a
applyThrice f x = f (f (f x))

flip' :: (a -> b -> c) -> b -> a -> c
--      a b     b a [returns] c
flip' f x y = f y x

map' :: (a -> b) -> [a] -> [b]  
map' _ [] = []  
map' f (x:xs) = f x : map' f xs  

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) =
    let smaller = quicksort' [ a | a <- xs, a <= x] 
        bigger = quicksort' [ a | a <- xs, a > x]
    in smaller ++ [x] ++ bigger

quicksort'' :: (Ord a) => [a] -> [a]
quicksort'' [] = []
quicksort'' (x:xs) =
    let smaller = quicksort' (filter' (<= x) xs)
        bigger = quicksort' (filter' (> x) xs)
    in smaller ++ [x] ++ bigger

quicksortRev :: (Ord a) => [a] -> [a]
quicksortRev [] = []
quicksortRev x = reverse' (quicksort' x)


filter' :: (a -> Bool) -> [a] -> [a]  
filter' _ [] = []
filter' f (x:xs) 
    | f x = x:filter' f xs
    | otherwise = filter' f xs

modThree :: (Integral a) => a -> Bool
modThree x = mod x 3 == 0 


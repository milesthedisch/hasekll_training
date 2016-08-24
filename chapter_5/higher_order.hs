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

largestDivisible :: (Integral a) => a  
largestDivisible = head (filter p [100000,99999..])  
    where p x = x `mod` 3829 == 0


chain' :: (Integral a) => a -> [a]  
chain' 1 = [1]  
chain' n  
    | even n =  n:chain' (n `div` 2)  
    | odd n  =  n:chain' (n*3 + 1)  
    | otherwise = []

numLongChains :: Int 
numLongChains = length (filter' (\xs -> length xs > 15) (map chain' [1..100]))

numLongChains' :: Int
numLongChains' = length (filter' isLongThan15 (map chain' [1..100]))
  where isLongThan15 xs = length xs > 15

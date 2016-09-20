-- Ths function looks a bit useless.
-- but there is actually usefullness
-- that comes out of this function.
-- The usefullnes comes from saving key strokes.
-- Inheritly f x y is ((f x) y)
-- but when using the $ it will do the opposite. 
-- f $ x y = (f (x y))


-- ($) :: (a -> b) -> a -> b  
-- f $ x = f x  

-- Examples:
-- sum $ map sqrt [1..1000]
-- sqrt $ 3 + 4 + 5
-- sum (filter (>10) (map (*2) [2..10]))
-- sum $ filter (>10) (map (*2) [2..10])
-- sum $ filter (>10) $ map (*2) [2..10]
-- map ($ 3) [(4+), (10*), (^2), sqrt]

-- In mathematics, function composition is defined like this: (f ◦ g)(x) = f(g(x)).

-- Negate all number in the list.
-- I dont think this will work.
abs' :: (Num a, Ord a) => a -> a
abs' x = if (x < 0) then x - (x * 2) else x

-- (.) :: (b -> c) -> (a -> b) -> a -> c  
-- f . g = \x -> f (g x)  

-- f (g (z x)) === (f . g . z) x
-- we can use currying and write the function like f . g . z    (x is curried!)

-- map (\x -> negate (abs x)) [5,-3,-6,7,-3,2,-19,24]
-- map (negate . abs) [5,-3,-6,7,-3,2,-19,24]

-- map (\xs -> negate (sum (tail xs))) [[1..5],[3..6],[1..7]] 
-- map (negate . sum . tail) [[1..5],[3..6],[1..7]]


-- replicate 100 (product (map (*3) (zipWith max [1,2,3,4,5] [4,5,6,7,8])))
-- replicate 100 . product . map (*3) [4,5,6,7,8]

-- zip the two lists: 
-- Which applys the max against [1, 2] in the first iteration.
-- That will equal 2 
-- After all interations we will get 

sum' :: (Num a) => [a] -> a     
sum' xs = foldl (+) 0 xs
-- can be also written like
sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0 

  -- fn x = ceiling (negate (tan (cos (max 50 x)))) 
-- * can be also written like this. *
  -- fn = ceiling . negate . tan . cos . max 50

oddSquareSum :: Integer  
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..]))) 

oddSquareSum' :: Integer 
oddSquareSum' = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]

oddSquareSum'' :: Integer  
oddSquareSum'' =   
    let oddSquares = filter odd $ map (^2) [1..]  
        belowLimit = takeWhile (<10000) oddSquares  
    in  sum belowLimit  


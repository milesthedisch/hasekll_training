doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- if statements are expressions just like the + or - expressions.
doubleSmallNumber x = 
  if x > 100 
    then x
    else doubleUs x x

-- Some haskell function will have ' at the front to mark that its a strict version or its a variation.
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

-- Function definitions dont do much they just hold some data.
conanO'Brien = "asdas"

-- List have to be the same data type.
--let lostNumbers = [4,5,15,16,23,42]

--let foundNumbers = [11,12,13,14,15,16]

boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
reduceMultiply xs ys = [ x*y | x <- xs, y <- ys]
--length' xs = sum [1 | _ <- xs] 
removeUppercase st = [c | c <- st, c `elem` ['a'..'z']]


removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe _ = "Not between 1 and 5" 

-- let rightTriangles = [(a,b,c) | c <- [1..10], b <- [1..10], a <- [1..10], c^2 = a^2 + b^2]

-- This bit is refactored to enforce that c is always going to larger than b and a is going to be smaller than b.
let rightTriangles' = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], c^2 = a^2 + b^2]

-- Now we need to add find the triangle that has a perimeter of 24
let rightTriangles'' = [(a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], c^2 == a^2 + b^2, c + a + b == 24]



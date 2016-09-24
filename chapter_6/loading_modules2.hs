import Data.List hiding (nub)


-- Split list into a head and tail
-- Take the head apply it to a new list
-- If that new list head exsists in the 
-- old list give me the next item.
-- else push that item into new list
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub l = nub' l []
  where 
    nub' [] _ = []
    nub' (y:ys) xs 
      | y `elem` xs = nub' ys xs
      | otherwise = y : nub' ys (y:xs)

nub'' :: (Eq a) => [a] -> [a]
nub'' [] = []
nub'' (x:xs) = x : nub'' (filter (/= x) xs)
 
import qualified Data.Map as M
import qualified Data.List as L

-- M.filter (\x -> x) [1,2,3,4]

-- intersperse is like javascript split(' ');
-- L.intersperse ' ' "SPACES"

-- Data.List.intercalate [0] [[1],[2],[3]]
-- [1, 0, 2, 0, 3]

-- Data.transpose [[1,2,3],[4,5,6],[7,8,9]]
-- [[1,4,7],[2,5,8],[3,6,9]]  

-- 3x^2 + 5x + 9, 10x^3 + 9 and 8x^3 + 5x^2 + x - 1
-- map sum $ transpose [[0,3,5,9],[10,0,0,9],[8,5,1,-1]]  
-- polynomial addition.

intersperse' :: a -> [a] -> [a]
intersperse' _ [] = []
intersperse' y (x:xs) = x : y intersperse' y xs  
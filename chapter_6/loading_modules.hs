import Data.List (nub, sort);

numUniques :: (Eq a) => [a] -> Int;
numUniques = length . nub;

-- import Data.List hiding (nub);

-- I no longer have nub.

-- Hiding is a ! for imports 
-- It read like import Every thing from Data.List execpt nub


-- import qualified Data.Map 

-- Because the prelude module 
-- Has the class filter in it and Data.map also has it.
-- We need to used qualified.
-- now we can use Data.Map.filter with out polluting the global scope.

-- import qualified Data.Map as M  
-- Writing Data.Map.filter every time we want to use filter is really annoying.
-- So we do the `as` thing a now its scoped to M.
-- So we can write M.filter and get the same result.






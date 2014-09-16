-- Project Euler Problem 24 - lexicographic permutations
--
-- 1e6th lexicographic permutation of digits
--

import Data.List

main = do
    print ((sort (permutations [0..9]))!!999999)

	

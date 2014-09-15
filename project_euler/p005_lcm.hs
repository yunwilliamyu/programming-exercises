-- Project Euler Problem 5 - Smallest multiple
--
-- Smallest positive number evenly divisible by all of the numbers from 1 to 20
--

import Data.List

-- Note coprimes assumes the input list is sorted
coprimes :: (Integral a) => [a] -> [a]
coprimes [] = []
coprimes [x] = [x]
coprimes (x:xs) = x:(coprimes  (xs \\ [2*x, 3*x .. (last xs)]) )

factors n = if (n<=1) then [] else [x | x <- coprimes [2 .. n], (n `mod` x) == 0]
factorization n = if (n<=1) then [] else f ++ (factorization (n `div` product(f)))
	where f = factors n

-- multiset union of two lists
union_multi_pair a b = if ((a /= [])||(b /= [])) then c ++ (union_multi_pair (a\\c) (b\\c)) else []
	where
		c = union a b

-- multiset union of a list of lists
union_multi x = if (x /= []) then union_multi_pair (head x) (union_multi (tail x)) else []

main = do
	print (product (union_multi (map factorization [1..20])))
	

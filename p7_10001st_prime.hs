-- Project Euler Problem 7 - 10001st prime
--
--

import Data.List

-- Note coprimes assumes the input list is sorted
coprimes :: (Integral a) => [a] -> [a]
coprimes [] = []
coprimes [x] = [x]
--coprimes (x:xs) = x:(coprimes  (xs \\ [2*x, 3*x .. (last xs)]) )
coprimes (x:xs) = x:(coprimes [a | a <- xs, a `mod` x /= 0])

main = do
	print ((coprimes [2..200000])!!10000)
	

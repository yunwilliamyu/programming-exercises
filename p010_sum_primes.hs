-- Project Euler Problem 10 - summation of primes
--
-- Find the sum of all the primes below two million
--
--

import Data.List
import Debug.Trace

-- Note coprimes assumes the input list is sorted
coprimes :: [Int] -> [Int]
coprimes [] = []
coprimes [x] = [x]
coprimes (x:xs) = trace
	("curr: " ++ show x)
	(if (x < (last xs))
		then
			x:(coprimes [a | a <- xs, a `mod` x /= 0])
		else
			x:(coprimes  (xs \\ [2*x, 3*x .. (last xs)])))

main = do
	print (sum (coprimes [2..2000000]))
	

-- Project Euler Problem 3 - Largest prime factor
--
-- Largest prime factor of 600851475143
--

import Data.List

-- Note coprimes assumes the input list is sorted
coprimes :: (Integral a) => [a] -> [a]
coprimes [] = []
coprimes [x] = [x]
coprimes (x:xs) = x:(coprimes  (xs \\ [2*x, 3*x .. (last xs)]) )

main = do
	let n = 600851475143
	--let n = 111
	let checklist = (coprimes [2,3 .. 10000])
	--let checklist_f = reverse checklist
	print (take 100 [x | x <- checklist, (n `mod` x) == 0])
	
-- Hmm. Seems cheating a bit worked since the largest prime factor wasn't that big


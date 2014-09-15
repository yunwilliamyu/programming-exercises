-- Project Euler Problem 14 Longest Collatz sequence
--
-- Longest Collatz chain starting under 1000000
--

import Data.Ord
import Data.List

collatz_iterate n = if (n `mod` 2 == 0) then n `div` 2 else (3*n+1)
collatz_chain n = takeWhile (>1) (iterate collatz_iterate n) ++ [1]
collatz_lengths = zip [1..] [length (collatz_chain x) | x<-[1..]]

main = do
	print (maximumBy (comparing snd) (take 999999 collatz_lengths))
	

-- Project Euler Problem 14 Longest Collatz sequence
--
-- Which starting number, under one million, produces the longest Collatz chain?
--

import Data.Ord
import Data.List

collatz_iterate n = if (n `mod` 2 == 0) then n `div` 2 else (3*n+1)
collatz_chain n = takeWhile (>1) (iterate collatz_iterate n) ++ [1]
collatz_lengths = zip [1..] [length (collatz_chain x) | x<-[1..]]

main = do
	print (maximumBy (comparing snd) (take 999999 collatz_lengths))
	

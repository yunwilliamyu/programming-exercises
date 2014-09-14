-- Project Euler Problem 1 (Multiples of 3 and 5).
--
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.
--

import Data.List

main = do
	let a = [3,6..999] -- multiples of 3 
	let b = [5,10..999] -- multiples of 5
	let c = a ++ b -- concatenate two lists together
	let d = nub(c) -- remove duplicates from concatenated list
	print (sum(d))


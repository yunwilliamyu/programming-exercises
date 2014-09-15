-- Project Euler Problem 4 - largest palindrome
--
-- Largest palindrome that's the product of two 3-digit numbers.
--

main = do
	let prods=[ x*y | x <- [100..999], y <- [100..999] ]
	print (maximum [ x | x<-prods, reverse (show x) == (show x)])
	

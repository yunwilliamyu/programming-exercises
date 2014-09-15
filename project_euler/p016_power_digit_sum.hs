-- Project Euler Problem 16 power digit sum
--
-- What is the sum of the digits of the number 2^1000
--

y = [ read [x] :: Int | x <- (show (2^1000))]


main = do
	print (sum y)
	

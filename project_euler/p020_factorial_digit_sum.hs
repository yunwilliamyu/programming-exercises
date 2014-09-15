-- Project Euler Problem 20 factorial digit sum
--
-- What is the sum of the digits of the number 100!
--

factorial = scanl (*) 1 [1..]
y = [ read [x] :: Int | x <- (show (factorial!!100))]


main = do
	print (sum y)
	

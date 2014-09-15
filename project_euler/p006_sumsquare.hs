-- Project Euler Problem 6 - Sum square difference
--
-- difference between the sum of squares and square of the sum of the first one hundred natural numbers
--
--

main = do
	let n = 100
	let sumsquare = sum [ x^2 | x <- [1..n]]
	let squaresum = (sum [1..n])^2
	print (squaresum - sumsquare)

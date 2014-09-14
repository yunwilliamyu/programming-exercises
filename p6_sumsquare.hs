-- Project Euler Problem 6 - Sum square difference
--
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
--
--

main = do
	let n = 100
	let sumsquare = sum [ x^2 | x <- [1..n]]
	let squaresum = (sum [1..n])^2
	print (squaresum - sumsquare)

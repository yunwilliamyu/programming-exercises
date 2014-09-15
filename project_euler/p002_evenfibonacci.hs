-- Project Euler Problem 2 (Even Fibonaci numbers)
--
-- Sum of all even-valued Fibonacci numbers less than or equal to 4e6.
--


-- Returns a 2-item tuple with the second of two items in the tuple as the first and their sum
fib_next :: (Integral a) => (a,a) -> (a,a)
fib_next (x,y) = (y,x+y)

fib_pair = (iterate fib_next (0,1))
fibonacci = [ fst x | x <- fib_pair ]
even_fib = [ x | x <- fibonacci, x `mod` 2 == 0]

main = do
	print (sum (takeWhile (<= 4000000) even_fib))
	
	


-- Project Euler Problem 12 - highly divisible triangular number
--
-- First triangle number to have over five hundred divisors
--

import Data.List

triangle = scanl (+) 1 [2..]
--factorial = scanl (*) 1 [2..]

-- Too slow
--divisors num = [x | x<-[1..num], num `mod` x == 0]

prime_factorization :: (Integral a) => a -> [a]
prime_factorization 1 = []
prime_factorization x = f:(prime_factorization (x `div` f)) 
	where f = (head [y | y<-[2..], x `mod` y == 0])

count x list = length [ y | y <-list, y==x]

sorted_list_counts list = zip uniq [count x list | x <- uniq]
	where uniq = nub list

num_factors x = (product (map (+1) (map snd (sorted_list_counts (prime_factorization x)))))

main = do
	print (head [ x | x <- triangle, num_factors x >= 500 ])
	--print (num_factors 28)
	

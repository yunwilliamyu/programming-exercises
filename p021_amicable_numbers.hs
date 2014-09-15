-- Project Euler Problem 21 - amicable numbers
--
-- What is the value of the first triangle number to have over five hundred divisors?
--


import Data.List
divisors num = [x | x<-[1..num-1], num `mod` x == 0]
neighbor num = sum (divisors num)

main = do
	print (sum ((nub . concat) [ [x,y] | x<-[1..10000], let y=(neighbor(x)), x==neighbor(y), x/=y]))
	--print (num_factors 28)
	

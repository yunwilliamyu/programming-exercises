-- Project Euler Problem 23 - non-abundant sums
--
-- Sum all positive integers not sum of two abundant numbers
--


import Data.List
divisors num = [x | x<-[1..k],  num `mod` x == 0]
    where k = min (num-1) ((num `div` 2)+1)
neighbor num = sum (divisors num)

abundant_numbers = [ x | x<-[1..], x<neighbor(x)]

main = do
    let components = takeWhile (<28123) abundant_numbers
    let canwrite = (nub . sort) [x + y | x <- components, y <- components, x+y <= 28123, x<=y]
    print (sum ( [1..28123] \\ canwrite))

	

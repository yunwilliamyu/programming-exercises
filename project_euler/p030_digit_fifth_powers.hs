-- Project Euler Problem 30 - digit fifth powers
--
-- sum all numbers that are the sum of the fifth powers of their digits
--
-- (does not include 1)
--


import Data.List
import Data.Char

digits x = [ digitToInt y | y <- (show x)]
p5dsum x = sum [ y^5 | y <- digits x]

max_possible = (9^5)*10 -- assuming no more than ten digits, which is true as 9^5 is a 6 digit number (bound not tight)

main = do
    print ( sum [ x | x<-[2..max_possible], x==(p5dsum x)] )

	

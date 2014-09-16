-- Project Euler Problem 29 - distinct powers
--
-- length . nub [a^b | a <- [2..100], b <-[2..100]]
--


import Data.List

main = do
    print ( (length . nub) [a^b | a <- [2..100], b <-[2..100]])

	

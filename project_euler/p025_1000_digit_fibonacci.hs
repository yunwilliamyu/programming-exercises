-- Project Euler Problem 25 - 1000-digit fibonacci number
--
-- First 1000-digit fibonacci
--

import Data.List

fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main = do
    print (findIndex (>=10^999) fibonacci)

	

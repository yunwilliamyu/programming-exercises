-- Project Euler Problem 27 - quadratic primes
--
-- Product a*b, |a|<1000, |b|<1000, s.t. n^2 + an + b \in [Prime] for [1..k] s.t. k is maximized
--


import Data.List
import Data.Ord

max_value = 10000

-- Note coprimes assumes the input list is sorted
coprimes :: (Integral a) => [a] -> [a]
coprimes [] = []
coprimes [x] = [x]
coprimes (x:xs) = x:(coprimes [a | a <- xs, a `mod` x /= 0])

primes = coprimes [2..max_value]

quad_seq a b = takeWhile (`elem` primes) [n^2 + a*n + b | n <- [0..]]

quad_lengths = [(l,(a,b)) | a <- [-999..999], b <- [-999..999], let q = quad_seq a b, let l = length q, l>0]

main = do
    print (maximumBy (comparing fst) quad_lengths)
    --print (sortBy (comparing fst) quad_lengths)
    --print (quad_seq 1 41)

	

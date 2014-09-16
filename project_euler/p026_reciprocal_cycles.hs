-- Project Euler Problem 26 - reciprocal cycles
--
-- Longest recurring cycle in decimal fraction part of 1/d for d<1000, d \in Int
--

import Data.List
import Data.Ord

{-
long_division :: (Integral a) => a -> a -> [a]
long_division 0 _ = []
long_division x 1 = [x]
long_division x y = if (o==(x`div`10)) then [] else (x `div` y):(long_division ((x`mod`y)*10) y)
-}

division_iter :: (Integral a) => a -> (a,a) -> (a,a)
division_iter d (x,r) = ((r*10)`div`d,(r*10)`mod`d)

long_division x y = iterate (division_iter y) (0,x)

break_on_repeat :: (Eq a) => [a] -> [a] -> [a]
break_on_repeat x y
    | (findIndex (==h) x)==Nothing = break_on_repeat (h:x) (tail y)
    | otherwise = h:x
    where h = head y

main = do
    --let expansion = (long_division 1 8)
    --let repeat_region = (break_on_repeat [] expansion)
    --let repeat = takeWhile (/=(head repeat_region)) (tail repeat_region)
    let results = [(d, (1+length r)) | d <- [1..999], let e = long_division 1 d, let rr = (break_on_repeat [] e), let r = takeWhile (/=(head rr)) (tail rr)]
    print (take 1 (reverse (sortBy (comparing snd) results)))

	

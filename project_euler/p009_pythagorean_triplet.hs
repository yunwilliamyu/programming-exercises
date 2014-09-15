-- Project Euler Problem 9 - Special Pythagorean triplet
--
-- Product of the Pythagorean triplet for which a + b + c = 1000
-- 


ans =  [ a*b*c | a <- [1..1000], b <-[1..1000], let c = 1000 - a -b , c^2 == a^2 + b^2]

main = do
	print ans

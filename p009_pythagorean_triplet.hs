-- Project Euler Problem 9 - Special Pythagorean triplet
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.


ans =  [ a*b*c | a <- [1..1000], b <-[1..1000], let c = 1000 - a -b , c^2 == a^2 + b^2]

main = do
	print ans

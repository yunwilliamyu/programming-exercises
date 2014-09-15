-- Project Euler Problem 18 maximum path sum 1
--
-- Find the maximum total from top to bottom of the triangle below:

triangle = [
	[75],
	[95,64],
	[17,47,82],
	[18,35,87,10],
	[20,04,82,47,65],
	[19,01,23,75,03,34],
	[88,02,77,73,07,63,67],
	[99,65,04,28,06,16,70,92],
	[41,41,26,56,83,40,80,70,33],
	[41,48,72,33,47,32,37,16,94,29],
	[53,71,44,65,25,43,91,52,97,51,14],
	[70,11,33,28,77,73,17,78,39,68,17,57],
	[91,71,52,38,17,14,91,43,58,50,27,29,48],
	[63,66,04,68,89,53,67,30,73,16,69,87,40,31],
	[04,62,98,27,23,09,70,98,73,93,38,53,60,04,23]
	]

reshaped triangle = if triangle==[] then [] else [last x | x <- triangle]:(reshaped [init x | x <- triangle, length (x) > 1])

rtri = reshaped triangle

getval p i j = 
	if (i >= length(p))
		then 0
		else if (j >= length(p!!i))
			then 0
			else p!!i!!j

rmax :: [[Int]] -> Int -> Int -> Int
rmax p 0 0 = getval p 0 0
rmax p i 0 = rmax p (i-1) 0 + getval p i 0
rmax p 0 j = rmax p 0 (j-1) + getval p 0 j
rmax p i j = (max (rmax p i (j-1)) (rmax p (i-1) j)) + getval p i j

main = do
	--print (concat ( map translator [1..1000]))
	print (rmax rtri ((length rtri)-1) ((length rtri)-1))
	

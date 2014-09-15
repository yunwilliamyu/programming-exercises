-- Project Euler Problem 17 number letter counts
--
-- If all the numbers from 1 to 1000 inclusive were written out in words, how many letters would be used?
--

through_ones = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
teens_and_ten = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"] -- extra blanks at beginning to line up

translator :: Int -> String
translator x
	| x < 1 = "Number too small"
	| x <= 9 = through_ones!!(x)
	| x <= 19 = teens_and_ten!!(x-10)
	| x <= 99 = tens!!(x `div` 10) ++ through_ones!!(x `mod` 10)
	-- | x == 100 = "onehundred"
	| x <= 999 = through_ones!!(x `div` 100) ++ "hundred" ++ if (x `mod` 100 ==0) then "" else "and" ++ (translator (x `mod` 100))
	| x == 1000 = "onethousand"
	| x <= 9999 = through_ones!!(x `div` 1000) ++ "thousand" ++ (translator (x `mod` 1000))
	| otherwise = "Number invalid or too big"

main = do
	--print (concat ( map translator [1..1000]))
	print (length (concat (map translator [1..1000])))
	

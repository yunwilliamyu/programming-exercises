-- Project Euler Problem 19 counting sundays
--
-- How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

import Data.List

feb y 
    | y `mod` 400 == 0 = 29
    | y `mod` 100 == 0 = 28
    | y `mod` 4 == 0 = 29
    | otherwise = 28

months y = [31, feb y, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

day_iterate [y,m,d,w] = [y+yc, (m+mc) `mod` 12, (d+1) `mod` (months y)!!m, (w+1) `mod` 7]
    where newday = (d+1) `mod` ((months y)!!m)
          newmonth = (m+mc) `mod` 12
          mc = if newday==0 then 1 else 0
          yc = if (newmonth==0)&&(newday==0) then 1 else 0
    
calendar = iterate day_iterate [1900,0,0,1]
    
yearless x y = (x!!0 < y)

main = do
    print (length [ x |x<-(takeWhile (`yearless` 2001) calendar), x!!2 == 0, x!!3 ==0, x!!0 >1900])
    --print (find (==[2014,8,13,0]) calendar)
    

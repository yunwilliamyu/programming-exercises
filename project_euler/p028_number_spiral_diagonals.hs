-- Project Euler Problem 28 - number spiral diagonals
--
-- given a 1001x1001 clockwise diagonal spiral starting from the center at 1 and counting upwards, what is the sum of the diagonals?
--


import Data.List
import Data.Ord

spiral_iterate (x,y)
    | (x,y)==(0,0) = (1,0)    -- start spiral right
    | (x==  y)&&(x>0)= (x+1,y  )  -- exception: keep going right at upper right corner
    | (x-1==y)&&(x>0)= (x  ,y-1)  -- turn down just after upper right corner (note have to go one over to continue spiral)
    | (x== -y)&&(x<0)= (x+1,y  )  -- turn right at upper left corner
    | (x==  y)&&(x<0)= (x  ,y+1)  -- turn up at lower left corner
    | (x== -y)&&(x>0)= (x-1,y  )  -- turn left at lower right corner
    | (y<x)&&(y> -x)&&(x>0) = (x  ,y-1)  -- go down while on right edge
    | (y>x)&&(y> -x)&&(y>0) = (x+1,y  )  -- go right while on top edge
    | (y>x)&&(y< -x)&&(x<0) = (x  ,y+1)  -- go up while on left edge
    | (y<x)&&(y< -x)&&(y<0) = (x-1,y  )  -- go left while on bottom edge

spiral = iterate spiral_iterate (0,0)

main = do
    --print (sortBy (comparing fst) quad_lengths)
    print (sum (takeWhile (<=(1001*1001)) [ b | (a,b)<- (zip spiral [1..]), (fst a == snd a)||(fst a == -snd a)] ))
    --print (quad_seq 1 41)

	

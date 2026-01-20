# Write your MySQL query statement below


select * , if(x+y>z and x+z>y and y+z >x ,"Yes","No") as triangle from Triangle

-- T.C ->  O(N) where n is number of rows in Triangle table
-- S.C -> O(1)

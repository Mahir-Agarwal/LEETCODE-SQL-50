# Write your MySQL query statement below

select "Low Salary" as category ,SUM(if(income<20000,1,0)) as accounts_count 
from accounts 
union all

select "Average Salary" as category ,SUM(if(income>=20000 and income <= 50000 ,1,0)) as accounts_count 
from accounts 
union all

select "High Salary" as category ,SUM(if(income>50000,1,0)) as accounts_count 
from accounts 

-- T.C -> O(n) where n is number of rows in accounts table 
-- S.C -> O(1) 
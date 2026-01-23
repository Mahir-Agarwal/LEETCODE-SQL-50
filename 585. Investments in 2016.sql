# Write your MySQL query statement below


SELECT ROUND(SUM(TIV_2016),2)  AS TIV_2016 FROM  Insurance
WHERE 
TIV_2015 IN (select tiv_2015 as tiv from Insurance group by tiv_2015 having count(*)>1)
and (lat,lon) in (select lat,lon from Insurance group by lat , lon having count(*)=1)

-- T.C-> O(N) ,where n is the number of rows in the Insurance table
-- S.C-> O(1)
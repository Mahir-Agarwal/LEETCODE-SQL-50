# Write your MySQL query statement below

select sell_date , count(distinct product ) as num_sold ,
GROUP_CONCAT(DISTINCT product ORDER BY product SEPARATOR ',')
as products from Activities

group by sell_date;


--T.C -> O(nlogn)
--S.C -> O(n) (temporary buffers for sorting + concatenation)
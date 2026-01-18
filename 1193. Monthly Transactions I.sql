# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date,'%Y-%m') AS month,
country,
Count(id) as trans_count,
Count(IF(state='approved',1,NULL)) AS approved_count,
SUM(amount) AS trans_total_amount,
SUM(IF(state='approved',amount,0)) AS approved_total_amount
FROM Transactions
GROUP BY DATE_FORMAT(trans_date,'%Y-%m'), country
ORDER BY NULL
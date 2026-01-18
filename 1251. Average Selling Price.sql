# Write your MySQL query statement below


select  p.product_id  ,  ROUND( IFNULL(SUM( p.price*u.units) /SUM(U.UNITS), 0)
 , 2) as average_price 

FROM PRICES AS P  LEFT JOIN UNITSSOLD  AS U  ON p.product_id = u.product_id 
AND U.purchase_date BETWEEN P.start_date AND P.END_date

group by 
product_id ; 
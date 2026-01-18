# Write your MySQL query statement below

select  p.project_id  , ROUND( avg(E.experience_years  ),2) AS average_years FROM PROJECT AS  P JOIN 
EMPLOYEE AS E ON  E.employee_id  = P.employee_id  GROUP BY P.PROJECT_ID;
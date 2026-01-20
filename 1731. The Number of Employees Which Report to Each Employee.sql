# Write your MySQL query statement below


select m.employee_id , m.name , COUNT(*) AS reports_count  , 
 ROUND(AVG(e.age)) 
 as average_age from employees as m join employees as e 
 on m.employee_id  = e.reports_to group by m.employee_id order by employee_id;

--  T.C -> O(n) where n is the number of employees or rows in the table
--  S.C -> O(1) no extra space is used
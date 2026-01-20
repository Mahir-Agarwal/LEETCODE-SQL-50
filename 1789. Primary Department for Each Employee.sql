# Write your MySQL query statement below


select employee_id , department_id as department_id from Employee where primary_flag = "Y" or
employee_id in (select employee_id from Employee group by employee_id having 
count(employee_id)=1);

-- T.C -> O(n) where n is the number of employees or rows in the table
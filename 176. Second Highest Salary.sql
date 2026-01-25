# Write your MySQL query statement below


-- select max(salary) as  SecondHighestSalary from Employee 

-- where salary < (select max(salary) from Employee ) ; 


with sec as (

    select distinct salary ,dense_rank() over(order by salary desc ) as sal from
    employee
)

select max(salary) as SecondHighestSalary from sec where sal=2 ;

-- T.C: O(n)  n is the number of rows in Employee table
-- S.C: O(n) , for the CTE storage
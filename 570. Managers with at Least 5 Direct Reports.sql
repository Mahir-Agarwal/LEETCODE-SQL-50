# Write your MySQL query statement below


select  a.name  from employee as a join employee as b on b.managerId = a.id  
group by b.managerId having count(b.managerId)>=5 ;
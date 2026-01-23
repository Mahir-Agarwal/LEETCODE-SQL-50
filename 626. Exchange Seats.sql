# Write your MySQL query statement below

select  
 CASE  when id%2=1 and id+1 in (select id from seat) then id+1
  when id%2= 0 then id-1
 ELSE  id  
 end as id , student from seat  order by id asc ;

--  T.C -> O(n) 
-- S.C -> O(1)

--  Explanation ->  we are using case statement here to check if the id is odd or even
-- if the id is odd we are checking if the next id exists in the table if it exists we are swapping the id with next id
-- if the id is even we are swapping the id with previous id becasue even id always have previous odd id
-- if none of the above conditions are met we are keeping the id as it is
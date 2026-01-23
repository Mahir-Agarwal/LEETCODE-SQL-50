# Write your MySQL query statement below

select res as  id , count(*) as num from (
select accepter_id as res from RequestAccepted 
union all
select requester_id as res from RequestAccepted 
) t
group by res 
order by num desc limit 1 ;


-- T.C -> O(n)
-- S.C -> O(n)
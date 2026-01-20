# Write your MySQL query statement below


-- logic -> we take three instance of log table l1 , l2 ,l3 because we want atleast three time that number appears in table then we do apply some rule   
--              1st. condition                             2nd. condition
-- ( l1.id = l2.id-1 and l2.id = l3.id-1 )and ( l1.num = l2.num and l2.num = l3.num )     

select distinct l3.num as  ConsecutiveNums  from
logs l1 , logs l2 , logs l3 where 
(l1.id = l2.id-1 and l2.id = l3.id-1) and (l1.num = l2.num and l2.num = l3.num) ;


-- T.C -> O(n) 
-- S.C -> O(1)
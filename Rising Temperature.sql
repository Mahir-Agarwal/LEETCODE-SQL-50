
select next.id from weather as next join weather as prev 
on  
DATEDIFF(next.recordDate,prev.recordDate) = 1 
where next.temperature > prev.temperature;
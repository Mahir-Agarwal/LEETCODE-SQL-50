with cte as (
    select *,row_number() over (partition by email order by id) as rn
    from Person
)
delete from person where 
id in (select id from cte where rn!=1)

-- T.C- > O(n log n) ,CAUSE OF SORTING
-- S.C- > O(n)
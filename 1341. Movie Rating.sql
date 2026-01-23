 
        
(select name as results from users join movieRating as m using (user_id) 
group by user_id order by count(rating) desc , name limit 1 )

union all 

(select title as results from movies join movieRating as mv using (movie_id)
WHERE mv.created_at LIKE '2020-02-%'
group by movie_id order by avg(rating) desc ,title limit 1 )
 
 

-- T.C -> O(NlogN)
-- S.C -> O(1)
 # Write your MySQL query statement below

with q as (

    select person_name , SUM(WEIGHT) OVER (ORDER BY TURN) AS CUM_W FROM QUEUE
)

select person_name from q where

cum_w <=1000 order by cum_w desc limit 1 ;

-- Learned a new thing , If you want cumulative sum / running sum, we use Window Function with OVER() 

-- Also, we can use ORDER BY inside OVER() to specify the order of rows for cumulative calculation.

-- T.C -> O(N) WHERE N IS THE NUMBER OF ROWS IN THE TABLE
-- S.C -> O(N) MAKING A CUMULATIVE SUM TEMPORARY TABLE

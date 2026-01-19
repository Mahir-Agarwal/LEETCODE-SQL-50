# Write your MySQL query statement below

select ROUND(
        COUNT(DISTINCT A.player_id*1.0) /
        (SELECT COUNT(DISTINCT PLAYER_ID ) FROM ACTIVITY)
     ,2) AS FRACTION FROM ACTIVITY AS A 
     JOIN
(select player_id , MIN(event_date ) as first_DATE  from activity group by player_id )
AS F ON A.PLAYER_ID=F.PLAYER_ID AND DATEDIFF(A.EVENT_DATE,F.FIRST_DATE )=1 ;
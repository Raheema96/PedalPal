WITH cte AS (
SELECT *
  FROM bike_share_2021
UNION
SELECT * 
FROM bike_share_2022 )


SELECT dteday, 
season, 
a.yr, 
weekday, 
hr, 
rider_type, 
riders, 
price, 
COGS, 
riders*price AS revenue, 
riders*price-COGS AS profit
FROM cte a
left join cost b
ON a.yr = b.yr

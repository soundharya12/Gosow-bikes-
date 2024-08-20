with cte as 
(select * from bike_share_yr_0 
union 
select * from bike_share_yr_1)

select dteday, hr, season, a.yr, weekday, rider_type,riders,COGS, riders*price as revenue, riders*price- COGS as profit
from cte a left join cost_table b on a.yr=b.yr ;



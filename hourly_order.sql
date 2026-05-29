-- determine distribution of orders by hour of the day
use pizzahut;

select hour(order_time) from orders; -- this can run by itself
select hour(order_time) as hour , count(order_id) as order_count from orders
group by hour(order_time);  -- we have an aggregated column using count function so we have to do the group by
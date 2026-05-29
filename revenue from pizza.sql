-- Calculate the total revenue generated from pizza sales.
select 
sum(order_details.quantity * pizzas.price) as total_sales
from order_details join pizzas
on pizzas.pizza_id=order_details.pizza_id;

-- to round off the sales to 2 decimal places
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
-- Press ctrl+B to beutify the query
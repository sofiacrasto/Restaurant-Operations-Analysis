# - View the order_details table.
SELECT * FROM order_details;

# - What is the date range of the table?
select min(order_date) , max(order_date) 
from order_details
order by order_date;

# - How many orders were made within this date range?
select count(distinct order_id)
from order_details;

# - How many items were ordered within this date range?
select count(*)
from order_details;

# - Which orders had the most number of items?
select order_id, count(item_id) as num_items
from order_details
group by order_id
order by num_items desc;

# - How many orders had more than 12 items?
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING COUNT(item_id) > 12;
SELECT COUNT(*) AS num_orders
FROM (
    SELECT order_id, COUNT(item_id) AS num_items
    FROM order_details
    GROUP BY order_id
    HAVING COUNT(item_id) > 12
) AS num_order;


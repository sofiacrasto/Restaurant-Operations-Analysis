 #Combine the menu_items and order_details tables into a single table.
 SELECT* FROM menu_items;
 SELECT * FROM order_details;
 SELECT * 
 FROM order_details od Left Join menu_items mi
      on od.item_id = mi.menu_item_id;

# What were the least and most ordered items? What categories were they in?
 SELECT item_name, category,count(order_details_id) as num_purchases
 FROM order_details od Left Join menu_items mi
      on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases ; 

 SELECT item_name, category,count(order_details_id) as num_purchases
 FROM order_details od Left Join menu_items mi
      on od.item_id = mi.menu_item_id
group by item_name, category
order by num_purchases desc;         

# What were the top 5 orders that spent the most money?
SELECT order_id, sum(price) as total_spend
FROM order_details od Left Join menu_items mi 
on od.item_id = mi.menu_item_id
group by order_id
order by total_spend desc
limit 5;
      
# View the details of the highest spend order. What insights can you gather from the results?
SELECT category, count(item_id) as num_items
FROM order_details od Left Join menu_items mi 
on od.item_id = mi.menu_item_id
where  order_id = 440
group by category;

# View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT order_id,category, count(item_id) as num_items
FROM order_details od Left Join menu_items mi 
on od.item_id = mi.menu_item_id
where  order_id in (440, 2075, 1957, 330, 2675)
group by  order_id, category;

#  View the menu_items table.
SELECT * FROM menu_items; 
#- Find the number of items on the menu.

select count(*) from menu_items;
# Identify the least and most expensive items on the menu.

select * from menu_items   #least  expensive
order by price;
select * from menu_items  # most expensive
order by price desc;

#how many Italian dishes are on the menu.
select count(*) from menu_items
where category = 'Italian';

# - what are least and most expensive Italian dishes.
select * from menu_items
where category = 'Italian'
order by price;
select * from menu_items
where category = 'Italian'
order by price desc;

# how many dishes are in each category.
select category, count(ï»¿menu_item_id) as No_of_item 
from menu_items 
group by  category;

#- What is  the average dish price within each category.
select category, avg(price) as avg_price 
from menu_items 
group by category; 

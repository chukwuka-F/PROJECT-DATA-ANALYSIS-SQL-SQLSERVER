SELECT * FROM workspace.titi_products;
SELECT * FROM workspace.titi_product_line;
SELECT * FROM workspace.orders;
SELECT * FROM workspace.order_details;


describe workspace.titi_products;
describe workspace.titi_product_line;
describe workspace.orders;
describe workspace.order_details;

calculate the total quantity of products in each product lines
select product_lines, sum(quantity) 
FROM workspace.titi_products 
group by product_lines;

joining products with the product line
select product_name, product_lines, text_description 
from workspace.titi_products 
inner join workspace.titi_product_line using (product_lines);


joining product with the order details 
select product_name, product_code, order_number, quantity, quantity_ordered 
from workspace.titi_products 
inner join workspace.order_details 
using (product_code);

calculate the leftover quantity of each stock after order
select product_name, product_code, quantity, quantity_ordered, (quantity-quantity_ordered) 
as quantity_remaining, order_number 
from workspace.titi_products 
inner join workspace.order_details 
using (product_code);

joining the orders and the order details
select product_code, order_number, quantity_ordered, price 
from workspace.order_details 
inner join workspace.orders 
using (order_number);

calculate the amount for each order
select product_code, order_number, quantity_ordered, price, (quantity_ordered*price) 
as amount_each_order 
from workspace.order_details 
inner join workspace.orders 
using (order_number);

to determine order with the highest quantity
SELECT MAX(quantity_ordered) 
as highest_quantity 
from workspace.order_details;

determine the products with price above 1000
SELECT * FROM workspace.titi_products where price > 1000;

determine the products in the product_lines of stationary with price below 800
SELECT * FROM workspace.titi_products 
where product_lines = 'stationary' and price < 800;

determine the total quantity of stock in comp_accessory before order
SELECT product_lines, sum(quantity) 
FROM workspace.titi_products 
where product_lines = 'comp_accessory';

to eradicate repetation of same product vendor in a colomn in other to know the number of product vendors
select distinct product_vendor 
FROM workspace.titi_products;

to know the total number of vendors
select count(distinct product_vendor) 
FROM workspace.titi_products;

to know the average total stock before order
select avg(quantity) 
FROM workspace.titi_products;

calculate the percentage of each product dispatched
select product_name, product_code, order_number, price, quantity, quantity_ordered, (quantity_ordered/quantity)*100 as percentage_dispatched from workspace.titi_products inner join workspace.order_details using (product_code, price);

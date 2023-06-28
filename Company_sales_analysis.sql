SELECT * FROM sales.customers;
SELECT * FROM sales.date;
SELECT * FROM sales.markets;
SELECT * FROM sales.products;
SELECT * FROM sales.transactions;

We are currently working on 5 datasets on this sales analysis

To determine the number of customers we are dealing with in the company
select count(*) 
as total_customer 
from sales.customers;

To determine the number of customer type in the company
select count(customer_type)
as total_no, customer_type 
FROM sales.customers 
group by customer_type;

To show first 5 list of customers with customer type E-commerce
select * 
FROM sales.customers 
where customer_type = 'E-commerce' 
limit 5;

To determine list of customers whose name starts with N and ends with N
select * 
FROM sales.customers 
where custmer_name 
LIKE 'N%N';

To determine the quantity of products we are selling
select count(*) 
as total_qty 
FROM sales.products;

To determine the types of products we have and each quantity
select count(product_type) 
as total_qty, product_type 
FROM sales.products 
group by product_type;

To determine the number of transactions performed through out the period
select count(*) 
as tot_transact 
FROM sales.transactions;

List of products sold
select distinct product_code 
FROM sales.transactions;

How many of these products were sold through out the period
select count(distinct product_code) 
as product_qty_sold 
FROM sales.transactions;

Which customer has the highest and lowest transaction rate through out the period
select count(customer_code) 
as transaction_rate, customer_code 
FROM sales.transactions 
group by customer_code 
order by count(customer_code) 
desc;

Which product has highest and lowest purchase power throughout the period.
select count(product_code) 
as purchase_rate, product_code 
FROM sales.transactions 
group by product_code 
order by count(product_code) 
desc;

Which product has the highest and lowest sales quantity throughout the period
select sum(sales_qty) 
as qty_sold, product_code 
FROM sales.transactions 
group by product_code 
order by sum(sales_qty) 
desc;

which customer has the highest and lowest quantity of product purchased throughout the period
select sum(sales_qty) 
as qty_purchased, customer_code 
FROM sales.transactions 
group by customer_code 
order by sum(sales_qty) 
desc;

To identify each customer code through their customer name
select sum(sales_qty) 
as qty_purchased, customer_code, custmer_name 
FROM sales.transactions 
inner join sales.customers 
using (customer_code) 
group by customer_code, custmer_name 
order by sum(sales_qty) desc;

quantity of each product that was purchased by every customer throughout the period categorically
select sum(sales_qty) 
as qty_sold, product_code, customer_code 
FROM sales.transactions 
group by product_code, customer_code 
order by sum(sales_qty) desc;

Market with the highest and lowest sales quantity recorded through out the period
select sum(sales_qty) 
as tot_sales_qty, market_code 
FROM sales.transactions 
group by market_code 
order by sum(sales_qty) 
desc;

To determine the quantity of sales for each product in the market throughout the period categorically
select sum(sales_qty) 
as tot_sales_qty, market_code, product_code 
FROM sales.transactions 
group by product_code, market_code 
order by sum(sales_qty)
desc;

To determine the highest and lowest quantity of sales recorded so far in a day throughout the period
select order_date, sum(sales_qty) 
as tot_sales_qty 
from sales.transactions 
group by order_date 
order by sum(sales_qty) 
desc;

To know the list of product sales in year 2020
SELECT * 
FROM sales.transactions 
where order_date 
between '2020-1-1' 
and '2020-12-31' 
order by order_date 
desc;

How much in INR was generated in 2020
select sum(sales_amount) 
as revenue_2020 
FROM sales.transactions 
where order_date 
between '2020-1-1' 
and '2020-12-31';

To know the list of product sales in year 2019
SELECT * 
FROM sales.transactions 
where order_date 
between '2019-1-1' 
and '2019-12-31' 
order by order_date 
desc;

products that has sales performance with less than 100 quantity sold per day in 2017
SELECT product_code, order_date, sales_qty 
FROM sales.transactions 
where sales_qty < 100 
and order_date 
between '2017-1-1' 
and '2017-12-31' 
order by order_date;


How much in INR was generated in 2019
select sum(sales_amount) 
as revenue_2019 
FROM sales.transactions 
where order_date 
between '2019-1-1' 
and '2019-12-31';


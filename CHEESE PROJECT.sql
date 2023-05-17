CREATE DATABASE PROJECT;


SELECT * FROM project.cheese_abuja;
SELECT * FROM project.cheese_lagos;


FOR ABUJA.



describe project.cheese_abuja;


SELECT * FROM project.cheese_abuja where QUANTITY_RETURNED or QUANTITY_OF_SALES is not null;


select data that we are going to be using for Abuja sales
select ID, date, location, quantity_of_sales, quantity_returned FROM project.cheese_abuja;


Looking at quantity_of_sales vs quantity_returned to get the actual_quantity_sold each day in Abuja
select ID, date, location, quantity_of_sales, quantity_returned, (quantity_of_sales - quantity_returned) as actual_quantity_sold FROM project.cheese_abuja;


what percentage of stock was returned by buyers from the quantity of sales each day in Abuja
we can see that on the 9th of January 2020, we had the highest rate of stock return for the month in Abuja
select ID, date, location, quantity_of_sales, quantity_returned, (quantity_returned/quantity_of_sales)*100 as percentage_stock_returned FROM project.cheese_abuja;


Looking at the total_buyers vs location_population to get the percentage of people that bought cheese each day in Abuja
select ID, date, location, total_buyers, location_population, (total_buyers/location_population)*100 as percentage_of_buyers FROM project.cheese_abuja;


Looking at the total quantity of rejected stock in January 2020 in Abuja
select sum(quantity_returned) as Total_monthly_returned FROM project.cheese_abuja; 


Looking at the total quantity of sales in January 2020 in Abuja
select sum(quantity_of_sales - quantity_returned) as Total_monthly_sold FROM project.cheese_abuja;


Calculating the amount sold each day before deduction of sales retun for January in Abuja
select ID, location, date, (quantity_of_sales*price_per_unit) as amount_sold FROM project.cheese_abuja;


calculate the amount of sales return each day for January in Abuja
select ID, location, date, (quantity_returned*price_per_unit) as amount_returned FROM project.cheese_abuja;


calculate the profit made each day for january in Abuja
select ID, location, date, ((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as revenue FROM project.cheese_abuja;


calculate the total profit made in the whole January in Abuja
select sum((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as total_monthly_profit FROM project.cheese_abuja;


Putting all queries together for the month of January in Abuja.
select ID, location, date, location_population, quantity_of_sales, quantity_returned, (quantity_of_sales - quantity_returned) as actual_quantity_sold, total_buyers, (quantity_of_sales*price_per_unit) as amount_sold, (quantity_returned*price_per_unit) as amount_returned, ((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as revenue, (total_buyers/location_population)*100 as percentage_of_buyers, (quantity_returned/quantity_of_sales)*100 as percentage_stock_returned FROM project.cheese_abuja;



FOR LAGOS.



describe project.cheese_lagos;


SELECT * FROM project.cheese_lagos where QUANTITY_RETURNED or QUANTITY_OF_SALES is not null;


select data that we are going to be using for Lagos sales
select ID, date, location, quantity_of_sales, quantity_returned FROM project.cheese_lagos;


Looking at quantity_of_sales vs quantity_returned to get the actual_quantity_sold each day in Lagos
select ID, date, location, quantity_of_sales, quantity_returned, (quantity_of_sales - quantity_returned) as actual_quantity_sold FROM project.cheese_lagos;


what percentage of stock was returned by buyers from the quantity of sales each day in Lagos
we can see that on the 29th of January 2020, we had the highest rate of stock return for the month in Lagos
select ID, date, location, quantity_of_sales, quantity_returned, (quantity_returned/quantity_of_sales)*100 as percentage_stock_returned FROM project.cheese_lagos;


Looking at the total_buyers vs location_population to get the percentage of people that bought cheese each day in Lagos
select ID, date, location, total_buyers, location_population, (total_buyers/location_population)*100 as percentage_of_buyers FROM project.cheese_lagos;


Looking at the total quantity of rejected stock in January 2020 in lagos
select sum(quantity_returned) as Total_monthly_returned FROM project.cheese_lagos; 


Looking at the total quantity of sales in January 2020 in Lagos
select sum(quantity_of_sales - quantity_returned) as Total_monthly_sold FROM project.cheese_lagos;


Calculating the amount sold each day before deduction of sales retun for January in Lagos
select ID, location, date, (quantity_of_sales*price_per_unit) as amount_sold FROM project.cheese_lagos;


calculate the amount of sales return each day for January in Lagos
select ID, location, date, (quantity_returned*price_per_unit) as amount_returned FROM project.cheese_lagos;


calculate the profit made each day for january in Lagos
select ID, location, date, ((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as revenue FROM project.cheese_lagos;


calculate the total profit made in the whole January in Lagos
select sum((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as total_monthly_profit FROM project.cheese_lagos;


Putting all queries together for the month of January in Lagos.
select ID, location, date, location_population, quantity_of_sales, quantity_returned, (quantity_of_sales - quantity_returned) as actual_quantity_sold, total_buyers, (quantity_of_sales*price_per_unit) as amount_sold, (quantity_returned*price_per_unit) as amount_returned, ((quantity_of_sales*price_per_unit)-(quantity_returned*price_per_unit)) as revenue, (total_buyers/location_population)*100 as percentage_of_buyers, (quantity_returned/quantity_of_sales)*100 as percentage_stock_returned FROM project.cheese_lagos;

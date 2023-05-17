SELECT * FROM rice_project.fried_rice_sales_2021;

describe rice_project.fried_rice_sales_2021;

looking at data to be using for 2021
select ID, month, quantity_produced, quantity_supplied, total_buyers
select ID, month, quantity_produced, quantity_supplied, total_buyers from rice_project.fried_rice_sales_2021;

calculate leftover after sales each month for 2021
select ID, month, quantity_produced, quantity_supplied, total_buyers, (quantity_produced-quantity_supplied) as monthly_left_over from rice_project.fried_rice_sales_2021;

calculate percentage of quantity supplied each month for 2021
select ID, month, quantity_produced, quantity_supplied, total_buyers, (quantity_supplied/quantity_produced)*100 as percentage_monthly_supplied from rice_project.fried_rice_sales_2021;

calculate percentage of quantity leftover each month for 2021
select ID, month, quantity_produced, quantity_supplied, total_buyers, 100-(quantity_supplied/quantity_produced)*100 as percentage_monthly_leftover from rice_project.fried_rice_sales_2021;


calculate total quantity produced in 2021
select sum(quantity_produced) as total_yearly_produced from rice_project.fried_rice_sales_2021;


calculate total quantity supplied in 2021
select sum(quantity_supplied) as total_yearly_supplied from rice_project.fried_rice_sales_2021;

calculate total quantity of leftover incurred in 2021
select sum(quantity_produced)-sum(quantity_supplied) as total_yearly_leftover from rice_project.fried_rice_sales_2021;


calculate amount sold each month in 2021
select ID, month, quantity_produced, quantity_supplied, total_buyers, price_per_unit, (quantity_supplied*price_per_unit) as amount_sold from rice_project.fried_rice_sales_2021;


to calculate monthly revenue for 2021
select (quantity_supplied*price_per_unit)-(quantity_produced-quantity_supplied)*price_per_unit as monthly_revenue from rice_project.fried_rice_sales_2021;


to find the monthly data for just January and June 2021.
select * FROM rice_project.fried_rice_sales_2021 where month = 'january' or month = 'june';


to find the monthly data from January to June 2021
select * FROM rice_project.fried_rice_sales_2021 where month IN ('january', 'february', 'march', 'april', 'may', 'june');


to find the month with the word having last letter as R in 2021.
select * from rice_project.fried_rice_sales_2021 where month like '%R';


Putting all queries together for year 2021.
select ID, month, quantity_produced, quantity_supplied, (quantity_produced-quantity_supplied) as monthly_left_over, total_buyers, price_per_unit, (quantity_supplied*price_per_unit) as amount_sold, (quantity_produced-quantity_supplied)*price_per_unit as amount_leftover, (quantity_supplied/quantity_produced)*100 as percentage_monthly_supplied, (quantity_supplied*price_per_unit)-(quantity_produced-quantity_supplied)*price_per_unit as monthly_revenue, 100-(quantity_supplied/quantity_produced)*100 as percentage_monthly_leftover from rice_project.fried_rice_sales_2021;



FOR 2022,



SELECT * FROM rice_project.fried_rice_sales_2022;

describe rice_project.fried_rice_sales_2022;

looking at data to be using for 2022
select ID, month, quantity_produced, quantity_supplied, total_buyers
select ID, month, quantity_produced, quantity_supplied, total_buyers from rice_project.fried_rice_sales_2022;

calculate leftover after sales each month for 2022
select ID, month, quantity_produced, quantity_supplied, total_buyers, (quantity_produced-quantity_supplied) as monthly_left_over from rice_project.fried_rice_sales_2022;

calculate percentage of quantity supplied each month for 2022
select ID, month, quantity_produced, quantity_supplied, total_buyers, (quantity_supplied/quantity_produced)*100 as percentage_monthly_supplied from rice_project.fried_rice_sales_2022;

calculate percentage of quantity leftover each month for 2022
select ID, month, quantity_produced, quantity_supplied, total_buyers, 100-(quantity_supplied/quantity_produced)*100 as percentage_monthly_leftover from rice_project.fried_rice_sales_2022;


calculate total quantity produced in 2022
select sum(quantity_produced) as total_yearly_produced from rice_project.fried_rice_sales_2022;


calculate total quantity supplied in 2022
select sum(quantity_supplied) as total_yearly_supplied from rice_project.fried_rice_sales_2022;

calculate total quantity of leftover incurred in 2022
select sum(quantity_produced)-sum(quantity_supplied) as total_yearly_leftover from rice_project.fried_rice_sales_2022;


calculate amount sold each month in 2022
select ID, month, quantity_produced, quantity_supplied, total_buyers, price_per_unit, (quantity_supplied*price_per_unit) as amount_sold from rice_project.fried_rice_sales_2022;


To calculate monthly revenue in 2022
select (quantity_supplied*price_per_unit)-(quantity_produced-quantity_supplied)*price_per_unit as monthly_revenue from rice_project.fried_rice_sales_2022;


to find the monthly data for just January and June 2022.
select * FROM rice_project.fried_rice_sales_2022 where month = 'january' or month = 'june';


to find the monthly data from January to June 2022
select * FROM rice_project.fried_rice_sales_2022 where month IN ('january', 'february', 'march', 'april', 'may', 'june');


to find the month with the word having last letter as R in 2022.
select * from rice_project.fried_rice_sales_2022 where month like '%R';


Putting all queries together for year 2022.
select ID, month, quantity_produced, quantity_supplied, (quantity_produced-quantity_supplied) as monthly_left_over, total_buyers, price_per_unit, (quantity_supplied*price_per_unit) as amount_sold, (quantity_produced-quantity_supplied)*price_per_unit as amount_leftover, (quantity_supplied/quantity_produced)*100 as percentage_monthly_supplied, (quantity_supplied*price_per_unit)-(quantity_produced-quantity_supplied)*price_per_unit as monthly_revenue, 100-(quantity_supplied/quantity_produced)*100 as percentage_monthly_leftover from rice_project.fried_rice_sales_2022;
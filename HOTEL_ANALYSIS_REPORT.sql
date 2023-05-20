SELECT * FROM hotelanalysis.hotel_analysis_03;
SELECT * FROM hotelanalysis.hotel_analysis_04;

In 2013, calculate the total stay in for each month for the two hotels
select hotels, arrival_month, arrival_year, stays_in_week_nights, stays_in_weekend_nights, 
(stays_in_week_nights+stays_in_weekend_nights) 
as total_stay_in 
FROM hotelanalysis.hotel_analysis_03;

In 2013, to calculate the total revenue recovered for each month for the two hotels
select hotels, arrival_month, arrival_year, stays_in_week_nights, stays_in_weekend_nights, daily_rate,
(stays_in_week_nights+stays_in_weekend_nights)*daily_rate
as revenue
FROM hotelanalysis.hotel_analysis_03;

to calculate the total revenue from each of the hotels for 2013
select hotels, sum(stays_in_week_nights), sum(stays_in_weekend_nights), 
sum(stays_in_week_nights+stays_in_weekend_nights) 
as total_stay_in, 
sum(stays_in_week_nights+stays_in_weekend_nights)*12000 
as revenue 
from hotelanalysis.hotel_analysis_03 
group by hotels;

to calculate the total number of people that stayed in the hotels each month in 2013
select hotels, arrival_month, arrival_year, adults, children, babies, (adults + children + babies) 
as total_people 
from hotelanalysis.hotel_analysis_03;

to calculate the total number of people that stayed in each of the hotels for the year 2013
select hotels, sum(adults), sum(children), sum(babies), sum(adults + children + babies) 
as population 
from hotelanalysis.hotel_analysis_03 
group by hotels;



In 2014, calculate the total stay in for each month for the two hotels
select hotels, arrival_month, arrival_year, stays_in_week_nights, stays_in_weekend_nights, 
(stays_in_week_nights+stays_in_weekend_nights) 
as total_stay_in 
FROM hotelanalysis.hotel_analysis_04;

In 2014, to calculate the total revenue recovered for each month for the two hotels
select hotels, arrival_month, arrival_year, stays_in_week_nights, stays_in_weekend_nights, daily_rate,
(stays_in_week_nights+stays_in_weekend_nights)*daily_rate
as revenue
FROM hotelanalysis.hotel_analysis_04;

to calculate the total revenue from each of the hotels for 2014
select hotels, sum(stays_in_week_nights), sum(stays_in_weekend_nights), 
sum(stays_in_week_nights+stays_in_weekend_nights) 
as total_stay_in, 
sum(stays_in_week_nights+stays_in_weekend_nights)*12000 
as revenue 
from hotelanalysis.hotel_analysis_04 
group by hotels;

to calculate the total number of people that stayed in the hotels each month in 2014
select hotels, arrival_month, arrival_year, adults, children, babies, (adults + children + babies) 
as total_people 
from hotelanalysis.hotel_analysis_04;

to calculate the total number of people that stayed in each of the hotels for the year 2014
select hotels, sum(adults), sum(children), sum(babies), sum(adults + children + babies) 
as population 
from hotelanalysis.hotel_analysis_04 
group by hotels;
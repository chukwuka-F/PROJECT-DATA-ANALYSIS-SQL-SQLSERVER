SELECT * FROM portfolio.hr;
describe portfolio.hr;

total number of employees
select count(*) 
FROM portfolio.hr;

Gender breakdown of employees
select first_name, last_name, dob, gender 
FROM portfolio.hr 
where gender 
in('male', 'female');
select count(gender) 
as total_number, gender 
FROM portfolio.hr 
group by gender;

Ethnicity/race breakdown of employees
select count(race) 
as total_number, gender, race 
from portfolio.hr 
group by race, gender 
order by total_number 
desc;

selecting table with no null value
SELECT * FROM portfolio.hr 
where dob 
is not null;

Employees who are in engineering and business development department only
select first_name, last_name, gender, department 
FROM portfolio.hr 
where department = 'Engineering' 
or department = 'business_development';

Employees whose age range between 1991 and 1997
select first_name, last_name, gender, department, dob 
FROM portfolio.hr 
where dob 
between '1991-04-06' 
and '1997-02-18';

Arranging the table in descending order based on employees ID
select ID, first_name, last_name, gender, department, dob 
FROM portfolio.hr 
order by ID 
desc;

Employees whose first name starts with letter A only.
select first_name, last_name, gender, department, dob 
FROM portfolio.hr 
where first_name 
like 'A%';

how many employees work remotely and in headquaters
select count(location) 
as total_number, gender, location 
FROM portfolio.hr 
group by location, gender;

Employees whose job title are business analyst and research assistant
select first_name, last_name, gender, job_title, salary 
from portfolio.hr 
where job_title 
in('Business_analyst', 'research_assistant');

how does the gender distribution vary with job title
select count(gender) 
as total_number, gender, job_title 
from portfolio.hr 
group by gender, job_title 
order by total_number 
desc;

how does the employee distribution vary in states and location
select count(gender) 
as total_number, gender, location_city, location_state 
from portfolio.hr 
group by gender, location_city, location_state 
order by total_number 
desc;

employee with the highest paid salary based on gender
select MAX(salary) 
as highest_paid, gender 
from portfolio.hr 
group by gender;

employees with the lowest paid salary based on gender
select MIN(salary) 
as lowest_paid, gender 
from portfolio.hr 
group by gender;

Total sum of salary expected to be paid anually by company
select sum(salary) 
as company_yearly_budget_salary 
from portfolio.hr;

what profession has the highest paying salary
SELECT * FROM portfolio.hr 
order by salary 
desc;

what is the percentage salary difference between the highest paid job and the lowest paid job
select (Max(salary) - Min(salary))/Min(salary)*100 
as percentage_diff 
from portfolio.hr;
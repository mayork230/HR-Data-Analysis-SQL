
Select * from hr_data_copy;
-- Checking for duplicate
select Id, count(Id) from hr_data_copy
group by Id
having count(*) > 1;

-- Format hire_date
-- Replace delimeter '/' with '-'
update hr_data_copy
set hire_date = replace (hire_date,'/','-');
update hr_data_copy
set hire_date = case when hire_date like '%-%'
                then str_to_date(hire_date, '%m-%d-%Y')
                end;
			
-- format birthdate
-- Replace delimeter '/' with '-'
update hr_data_copy
set birthdate = replace (birthdate,'/','-');
update hr_data_copy
set birthdate = case when birthdate like '%-%'
                then str_to_date(birthdate, '%m-%d-%Y')
                end;
-- Noticed that 100 years is added to some date
-- format to subtract 100 
Update hr_data_copy
		set birthdate = date_sub(birthdate,interval 100 year)
        where birthdate between '2065-11-01' and '2069-10-06'
        order by rand();
        
 -- Changing the datatype
  alter table hr_data_copy 
  modify column birthdate date;
  alter table hr_data_copy
  modify column hire_date date;
 
-- Adding a new column for age
alter table hr_data_copy
add age INT;
update hr_data_copy
set age =floor(datediff(curdate(),birthdate)/365);

-- No 1
-- Gender breakdown
select gender, count(gender) as count
from hr_data_copy
group by 1;

-- No 2
-- Number of employees working remotely from location
select department, count(location) as RemoteEmployee
from hr_data_copy
where location ='Remote'
group by department
order by department asc; 

-- No 3
-- Distribution of employees who work remotely and at headquater
select location, count(location) as Count 
from hr_data_copy
group by location;

-- N0 4
-- Race distribution in the company
select race, count(race) as Count
from hr_data_copy
group by race
order by Count desc;

-- N0 5
-- What is the distribution of job titles across the company
select jobtitle,
	count(jobtitle) as count from hr_data_copy
    group by 1
    order by 2 desc;

-- No 6
-- Distribution of employees across different states
select location_state, count(location_state) as Count
from hr_data_copy
group by location_state
order by count desc;

-- No 7
-- Number of employees whose employment has been terminated
select count(date(termdate)) as Terminated_Employees from hr_data_copy
where
date(termdate) <= curdate();
 
-- No 8
-- Longest Serving employees in the orginaization
select first_name, hire_date
from hr_data_copy
order by hire_date asc
limit 5;

-- No 9
-- Terminated employees by race
select race, count(date(termdate)<current_date()) as Terminated_employees from hr_data_copy
group by race
order by Terminated_employees desc;

-- No 10
-- Adding a new column for age
alter table hr_data_copy
add age int;
update hr_data_copy
set age = floor(datediff(curdate(),birthdate/365);
delete from hr_data_copy
where birthdate>curdate();
-- Age distribution in the company
select max(age),min(age) from hr_data_copy;
select 
	case 
		when age < 30 then '20-29'
        when age < 40 then '30-39'
        when age < 50 then '40-49'
        else '50-59'
        end age_group, count(age_group) as Age_Group_Count from hr_data_copy 
        group by age_group
        order by age_group asc;
	
-- No 11
-- Variation in employee hire counts over time
select case
			when  year (hire_date) <= 2005 then "2000-2005"
            when  year (hire_date) <= 2010 then "2006-2010"
            when  year (hire_date) <= 2015 then "2011-2015"
            when  year (hire_date) <= 2020 then "2016-2020"
            end as Hire_Year
, count(*) as count from hr_data_copy
group by Hire_Year;

-- No 12
-- Tenure distribution for each department
select department,
	round(avg(datediff(curdate(),hire_date)/365),2) as avg_tenure_years from hr_data_copy
		group by 1
        order by 2 desc;
    
-- No 13
-- Average length of employment in the company
select round(avg(datediff(curdate(),hire_date))/365,0) as average_length_of_employment
from hr_data_copy;

-- No 14
-- Department with the highest turn over rate
with cte as (select department,
count(department) as total_count, sum(case when date(termdate) <= curdate() then 1 else 0 end) as terminated_count
from hr_data_copy
group by department)
select department, round((terminated_count/total_count)*100,1) as turnover_rate from cte
order by turnover_rate desc
limit 1;


# DATA CLEANING & PREPARATION
-- Importing the two datasets
select * from customer_info;
select count(*) from account_info;

------------------------------
# Inspecting the data 
-- Checking For Null values
select * from customer_info 
where CustomerId is null or 
    Surname is null or 
    Geography is null or 
    Age is null 
    or tenure is null 
    or EstimatedSalary is null;
-- There are no missing values in the dataset.

-- Checking For Duplicates 
select CustomerId, 
		count(*)
from customer_info
Group by CustomerId
Having count(*) > 1;

With ranked as (
select customerId,
		row_number() over(partition by CustomerId order by CustomerId) as rn
FROM customer_info) 
delete from customer_info
where CustomerId in  (
select CustomerId from ranked where rn > 1);

----------------------
# Fixing Data types 
Update customer_info
set EstimatedSalary = regexp_replace(EstimatedSalary, '€ ', '');

Update account_info
set Balance = regexp_replace(Balance, '€', '');


------------------------
select distinct Geography from customer_info; 

# Fixing Dirty Categories
Update customer_info
set Geography = "France"
where Geography in ('FRA', 'French');

-----------------------------
# Handling Outliers 
select min(EstimatedSalary),
		avg(EstimatedSalary),
        max(EstimatedSalary)
from customer_info;

select min(Balance),
		avg(Balance),
        max(Balance)
from account_info;

------------------------------
# Creating a view for Python
create view bank_info as(
select c.CustomerId,
		c.Age,
        c.Gender,
        c.Geography,
        a.IsActiveMember,
        a.HasCrCard,
        a.NumOfProducts,
         a.Exited,
        c.Tenure,
        c.CreditScore,
        c.EstimatedSalary,
        a.Balance
from customer_info c
left join account_info a
on c.CustomerId = a.CustomerId
);

select * from bank_info;
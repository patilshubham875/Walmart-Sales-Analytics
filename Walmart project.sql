use sales;
SELECT * FROM sales.walmart_data;
describe sales.walmart_data;

CREATE TABLE sales.walmart_data (
  invoice_id int primary key,
  branch varchar(50),
  city varchar(50),
  category varchar(50),
  unit_price decimal(10,2),
  quantity decimal(10,2),
  date date,
  time Time,
  payment_method varchar(50),
  rating decimal(10,2),
  profit_margin decimal(10,2),
  total_sale decimal(10,2)
);


#1.	Identify different payment methods and their transaction counts & No of quantity sold

Select distinct payment_method, count(invoice_id)as Num_of_trans, 
sum(quantity) as total_qty 
from walmart_data 
group by payment_method;

--  Find the Average highest-rated product category in each branch.
Select * from (
Select Branch, category, avg(rating)as Average_rating, 
rank() over(partition by branch order by avg(rating) desc) as rnk
from walmart_data 
group by Branch, category) x 
where  rnk = 1;

-- 3. Determine the busiest day of the week for every branch based on transaction volume? 

Select branch, `Busiest_day`, trans from (
Select distinct branch, dayname(date) as `Busiest_day`, count(invoice_id) as trans,
dense_rank() over(partition by branch order by  count(invoice_id) desc) as rnk
from walmart_data 
group by branch, dayname(date)
order by branch, trans desc) x where rnk = 1;

-- 4. Analyze quantity sold by payment method across categories.? List payment method, category and total quantity

Select payment_method, category, sum(quantity) as total_qty 
from walmart_data 
group by payment_method, category 
order by payment_method;

-- 5. Calculate average, minimum, and maximum customer ratings by city?

Select distinct City, Avg(rating)as Average_rating,min(rating) as Min_rating, max(rating) as Max_rating 
from walmart_data 
group by city;

-- 6.  Rank product categories based on total profit generated.
Select category, 
sum(total_sale * profit_margin) as total_profit 
from walmart_data 
group by category 
order by total_profit desc;

-- 7. Identify the most frequently used payment method in each branch.

Select branch, payment_method, count(payment_method) as total_count from walmart_data group by branch, payment_method
order by branch, total_count desc;

-- 8. Analyze transaction distribution across Morning, Afternoon, and Evening shifts. 

Select (
case when time between '06:00:00' and '12:00:00' then 'Morning'
when time between '12:01:00' and '18:00:00' then 'Afternoon'
else 'Evening'
end
) as shifts, count(*) as total_trans 
from walmart_data
group by shifts;

-- 9. Find top 5 branches experienced the largest decrease in revenue compared to the previous year?(Current year 2023 to previous year 2022) 

Select *,  ROUND(((Sale_2022 - Sale_2023) / Sale_2022) * 100, 2)  as `revenue_decreases_in_%` from (
Select branch,
sum(
case 
when year(date) = 2023 then total_sale
else 0
end
) as 'Sale_2023',
sum(
case 
when year(date) = 2022 then total_sale
else 0
end
) as 'Sale_2022' from walmart_data group by branch) x
order by `revenue_decreases_in_%` desc
limit 5;


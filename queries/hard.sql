-- Find customers who spent more than the average spending of all customers.

-- Show the top-selling product in each category.

-- Find the second-highest salary in each department.

-- For each customer, calculate the running total of their spending over time (WINDOW FUNCTION).
select customer_id, order_id, order_date, amount, sum(amount) over(
  partition by customer_id
  order by order_date
  rows between unbounded preceding and current row
) as running_total
from orders 
order by customer_id, order_date

-- Find the order(s) with the highest revenue per product category.
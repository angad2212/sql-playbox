-- Find customers who spent more than the average spending of all customers. (CTE)
with totals as (
    select customer_id, sum(amount) as total_amount
    from orders
    group by customer_id
),
average_spent as (
    select avg(total_amount) as avg_val
    from totals
)
select c.customer_id, c.name, t.total_amount
from customers c
join totals t on c.customer_id = t.customer_id
cross join average_spent a
where t.total_amount > a.avg_val;

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
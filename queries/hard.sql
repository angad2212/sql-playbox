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
with product_qty as (
  select oi.product_id, sum(oi.quantity) as total_quantity
  from orderitems oi
  group by oi.product_id
),
ranked as (
  select p.product_id, p.name, p.category, q.total_quantity,
  row_number() over (partition by p.category order by q.total_quantity desc) as rn
  from products p
  join product_qty q on p.product_id = q.product_id
)
select product_id, name, category, total_quantity
from ranked
where rn = 1;

-- Find the second-highest salary in each department.
with ranked as (
  select e.employee_id, e.name, e.department, e.salary, e.manager_id,
  rank() over(partition by e.department order by e.salary desc) as rn
  from employees e
)
select * from ranked 
where rn = 2;

-- For each customer, calculate the running total of their spending over time (WINDOW FUNCTION).
select customer_id, order_id, order_date, amount, sum(amount) over(
  partition by customer_id
  order by order_date
  rows between unbounded preceding and current row
) as running_total 
from orders 
order by customer_id, order_date

-- Find the order(s) with the highest revenue per product category.
with order_category_revenue as (
  select p.category, oi.order_id, sum(oi.quantity * p.price) as revenue
  from orderitems oi
  join products p on oi.product_id = p.product_id
  group by p.category, oi.order_id
),
ranked as (
  select category, order_id, revenue,
  row_number() over (partition by category order by revenue desc) as rn
  from order_category_revenue
)
select category, order_id, revenue
from ranked
where rn = 1;
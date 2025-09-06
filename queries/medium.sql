-- Find the top 3 customers by total spending.
select * from customers where customer_id in (
  select customer_id from orders order by amount desc limit 3
) 
-- Get the number of orders placed per month in 2023.
select 
  to_char(order_date, 'YYYY-MM') as month,
  count(*) as month_orders 
from orders where order_date between '2023-01-01' and '2023-12-31'
group by month 
order by month

-- List customers who ordered more than or equal to 3 products in total.
select * from customers where customer_id in (
  select o.customer_id from orders o join orderitems oi on o.order_id = oi.order_id 
  group by o.customer_id having count(distinct oi.product_id) >= 3
);

-- Find the most expensive product in each category.
select p.name, p.price, p.category from products p
where p.price = (
  select max(p2.price) 
  from products p2 
  where p2.category = p.category
);
-- Get the average salary per department.
select department, round(avg(salary),2) from employees group by department

-- Find employees who earn more than their manager.
select e.name from employees e 
left join employees m 
on e.manager_id = m.employee_id
where e.salary > m.salary

-- List orders that include more than or equal to 2 different products.
select * from orders o where o.order_id in (
  select order_id from orderitems group by order_id
  having count(distinct product_id) >= 2
)
-- Show the product categories with total sales greater than 10,000.
select category from products group by category having sum(price) > 10000

-- Find customers who placed orders in at least 2 different months.
select * from customers where customer_id in (
  select customer_id from orders group by customer_id 
  having count(distinct to_char(order_date, 'YYYY-MM')) >= 2
)
-- Show the order with the maximum total amount (considering OrderItems).
select * from orders where amount = (
  select max(amount) from orders
)
-- List employees who do not manage anyone.

-- Rank employees by salary within each department (use RANK()).

-- Find the percentage of completed orders vs total orders.

-- Show customers whose first order was in January 2023.

-- For each order, calculate the total quantity of items ordered.
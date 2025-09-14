-- 🟢 EASY (2 Problems)

-- Q1: Find all customers who signed up in 2023.
-- Output: customer_id, name, signup_date
select customer_id, name, signup_date from customers
where signup_date between '2023-01-01' and '2023-12-31'

-- Q2: List all completed orders along with the customer’s name.
-- Output: order_id, customer_name, amount
select o.order_id, c.name as customer_name, o.amount from orders o
join customers c on c.customer_id = o.customer_id
where o.status = 'completed';

-- 🟡 MEDIUM (5 Problems)

-- Q3: Find the total spending of each customer on completed orders.
-- Output: customer_id, name, total_spent
select o.customer_id, c.name, 
sum(case when o.status = 'completed' then o.amount else 0 end) as total_spent
from orders o join customers c on c.customer_id = o.customer_id
group by o.customer_id, c.name

-- Q4: List the top 3 most expensive products in the Products table.
-- Output: product_id, name, price
select product_id, name, price from products order by price desc limit 3

-- Q5: Find the number of products purchased in each category (consider only completed orders).
-- Output: category, total_quantity
select p.category, sum(oi.quantity) as total_quantity
from orderitems oi
join products p on oi.product_id = p.product_id
join orders o on oi.order_id = o.order_id
where o.status = 'completed'
group by p.category;

-- Q6: Find employees who do not manage anyone.
-- Output: employee_id, name
select employee_id, name from employees where employee_id not in (
  select manager_id from employees where manager_id is not null
)
-- Q7: For each department, find the average salary and the highest salary.
-- Output: department, avg_salary, max_salary
select department, 
  round(avg(salary), 2) as avg_salary, 
  max(salary) as max_salary from employees
group by department

-- 🔴 HARD (3 Problems)

-- Q8: Find the customer who placed the highest number of completed orders.
-- Output: customer_id, name, order_count
select c.customer_id, c.name, count(*) as order_count
from orders o
join customers c on o.customer_id = c.customer_id
where o.status = 'completed'
group by c.customer_id, c.name
order by order_count desc
limit 1;

-- Q9: Find the second-highest salary in each department.
-- Output: department, employee_name, salary
select department, name, salary from (
  select employee_id, name, department, salary, 
  rank() over(
    partition by department
    order by salary desc
  ) as rn 
  from employees
)
where rn = 2
order by salary desc

-- Q10: Find the top-selling product in each category (by total revenue).
-- Output: category, product_name, total_revenue

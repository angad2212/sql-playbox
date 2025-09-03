-- Select all customers who signed up in 2023.
select * from customers where signup_date between '2023-01-15' and '2023-12-31'

-- Get the total number of orders.
select count(*) as number_of_orders from orders

-- Find the total revenue from the Orders table.
select sum(amount) as total_revenue from Orders;

-- List all products in the "Electronics" category.
select * from products where category = 'Electronics'

-- Get distinct cities of customers.
select distinct city from customers

-- Show the count of orders for each status.
select status, count(*) as count from orders group by status

-- Find the average order amount.
select round(avg(amount), 2) as average from orders

-- Select all employees in the "Sales" department.
select * from employees where department = 'Sales'

-- Get the employee with the highest salary among all employees.
select * from employees order by salary desc limit 1

-- Find customers who never placed an order.
select * from customers where customer_id not in (select distinct customer_id from orders)
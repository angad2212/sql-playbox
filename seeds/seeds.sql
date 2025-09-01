INSERT INTO Customers VALUES
(1, 'Alice', 'Delhi', '2023-01-15'),
(2, 'Bob', 'Mumbai', '2023-02-20'),
(3, 'Charlie', 'Bangalore', '2022-11-05'),
(4, 'Diana', 'Delhi', '2023-03-12'),
(5, 'Ethan', 'Chennai', '2023-01-25'),
(6, 'Fiona', 'Mumbai', '2022-09-18'),
(7, 'George', 'Hyderabad', '2023-04-10'),
(8, 'Hannah', 'Pune', '2023-06-01');

INSERT INTO Products VALUES
(101, 'iPhone', 'Electronics', 70000),
(102, 'Laptop', 'Electronics', 55000),
(103, 'Headphones', 'Electronics', 4000),
(104, 'T-shirt', 'Clothing', 800),
(105, 'Jeans', 'Clothing', 2000),
(106, 'Novel', 'Books', 500),
(107, 'Cookbook', 'Books', 700),
(108, 'Shoes', 'Clothing', 3000),
(109, 'Tablet', 'Electronics', 30000),
(110, 'Keyboard', 'Electronics', 2500);

INSERT INTO Orders VALUES
(201, 1, '2023-01-20', 74000, 'completed'),
(202, 2, '2023-02-25', 55000, 'completed'),
(203, 3, '2023-03-10', 2800, 'pending'),
(204, 1, '2023-03-15', 500, 'cancelled'),
(205, 4, '2023-03-18', 3600, 'completed'),
(206, 5, '2023-04-05', 75000, 'completed'),
(207, 6, '2023-05-12', 4000, 'pending'),
(208, 7, '2023-06-20', 60000, 'completed'),
(209, 8, '2023-06-25', 3500, 'completed'),
(210, 2, '2023-07-01', 1500, 'completed');

INSERT INTO OrderItems VALUES
(301, 201, 101, 1), -- Alice bought iPhone
(302, 201, 103, 1), -- Alice bought Headphones
(303, 202, 102, 1), -- Bob bought Laptop
(304, 203, 104, 2), -- Charlie bought T-shirts
(305, 203, 105, 1), -- Charlie bought Jeans
(306, 204, 106, 1), -- Alice cancelled Novel
(307, 205, 108, 1), -- Diana bought Shoes
(308, 205, 104, 2), -- Diana bought T-shirts
(309, 206, 101, 1), -- Ethan bought iPhone
(310, 206, 109, 1), -- Ethan bought Tablet
(311, 207, 103, 1), -- Fiona bought Headphones
(312, 208, 102, 1), -- George bought Laptop
(313, 208, 110, 1), -- George bought Keyboard
(314, 209, 107, 2), -- Hannah bought 2 Cookbooks
(315, 210, 105, 1); -- Bob bought Jeans

INSERT INTO Employees VALUES
(1, 'Rahul', 'Sales', 50000, NULL),   -- Manager
(2, 'Sneha', 'Sales', 40000, 1),
(3, 'Amit', 'Engineering', 70000, NULL), -- Manager
(4, 'Neha', 'Engineering', 60000, 3),
(5, 'Vikas', 'Engineering', 55000, 3),
(6, 'Priya', 'HR', 45000, NULL), -- Manager
(7, 'Ravi', 'HR', 30000, 6);

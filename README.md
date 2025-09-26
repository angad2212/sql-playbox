# SQL Playbox

This repository is a **complete SQL practice kit** designed to cover all the **essential SQL topics** needed for interviews and real-world problem-solving. Inspired by the **SQL 50 on LeetCode**, it provides a structured path to master SQL step by step.

---

## 🔹 What’s Inside?
- **Database Setup**: A ready-to-use schema with core business tables:  
  - `Customers` → customer details  
  - `Orders` → orders placed by customers  
  - `Products` → product catalog  
  - `OrderItems` → mapping between orders & products (many-to-many)  
  - `Employees` → staff, departments, salaries, and reporting hierarchy  
- **Practice Dataset**: Enough sample records to simulate real interview-style problems.  
- **A Set of Curated SQL Problems** categorized by difficulty:  
  - **Easy** → Filtering, basic `SELECT`, `WHERE`, `ORDER BY`, `DISTINCT`, simple joins  
  - **Medium** → Aggregations, multi-table joins, subqueries, `GROUP BY`, `HAVING`, set operations  
  - **Hard** → Window functions, advanced subqueries, CTEs, ranking queries, and complex joins  

---

## 🔹 Topics Covered
This repo ensures you practice **all major SQL concepts**, including:

- Basic queries & filtering (`SELECT`, `WHERE`, `DISTINCT`)  
- Sorting & limiting results (`ORDER BY`, `LIMIT`)  
- Joins (`INNER`, `LEFT`, `RIGHT`, `FULL`)  
- Aggregations (`COUNT`, `SUM`, `AVG`, `MAX`, `MIN`)  
- `GROUP BY` & `HAVING`  
- Subqueries (single-row & multi-row)  
- Set operations (`UNION`, `INTERSECT`, `EXCEPT`)  
- Window functions (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LAG`, `LEAD`)  
- Common Table Expressions (CTEs)  
- Advanced filtering & nested queries  

---

## 🔹 How to Get the Best Out of This Repo
This isn’t just another SQL repo — it’s designed so you can **practice smart and effectively**:

1. **Queries Folder**  
   - Each file contains **commented-out SQL problems**.  
   - Read the question in the comment → try writing your own solution → check the provided answer written right below.  
   - This way, you learn by **active recall + immediate feedback**.  

2. **Schema Folder**  
   - Contains the full **database schema** shown above (customers, orders, products, order-items, employees).  
   - Set it up locally in your preferred SQL environment (MySQL, PostgreSQL, etc.) to simulate real interview queries.  

3. **Seeds Folder**  
   - Pre-loaded **sample data** for all tables.  
   - Insert this into your DB to test queries against realistic datasets.  
   - You can also **modify or expand the data** to create your own variations and tougher test cases.  

👉 Use the repo like a **self-contained SQL playground**: read, think, write queries, run them on your own DB, and compare with provided answers.  

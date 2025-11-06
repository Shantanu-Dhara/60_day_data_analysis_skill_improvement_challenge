# 📘 Day 9 – SQL Joins Practice

### 🗓 Date
November 6, 2025

---

### 🧠 Topics Practiced
**SQL Concepts Covered:**

#### 🔹 INNER JOIN / LEFT JOIN / RIGHT JOIN
- Combined data from two related tables using `JOIN` clauses.  
- Practiced `LEFT JOIN` to include unmatched records (showing NULLs).  
- Explored `RIGHT JOIN` to reverse the perspective of data linkage.  

#### 🔹 SELF JOIN
- Used self-join to compare rows within the same table (as in *Rising Temperature* problem).  

---

### 🧩 LeetCode Problems Solved
1. **1378. Replace Employee ID With The Unique Identifier** – Practiced `LEFT JOIN` to handle missing unique IDs.  
2. **1068. Product Sales Analysis I** – Used `RIGHT JOIN` to match product names with sales data.  
3. **1581. Customer Who Visited but Did Not Make Any Transactions** – Counted customers using `LEFT JOIN` with `WHERE transaction_id IS NULL`.  
4. **197. Rising Temperature** – Applied `SELF JOIN` with `DATEDIFF()` to compare consecutive days’ temperatures.  

---

### 🧠 Key Learnings
- `LEFT JOIN` is crucial for identifying missing relationships in datasets.  
- Self-joins are powerful for comparing row-to-row changes within the same table.  
- Writing joins efficiently improves readability and reduces redundancy.  

---

### 🪄 Status
**✔ Completed Successfully**

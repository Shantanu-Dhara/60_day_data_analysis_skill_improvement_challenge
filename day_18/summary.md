# 📘 Day 18 – SQL Joins & Aggregation Practice

### 🗓 Date
November 15, 2025

---

### 🧠 Topics Practiced
**SQL Concepts Covered:**

#### 🔹 LEFT JOIN
- Used left joins to include all records from the base table.
- Handled missing values using `IS NULL` conditions.

#### 🔹 CROSS JOIN
- Generated all student–subject combinations for reports.

#### 🔹 SELF JOIN Logic
- Compared start and end activities for process durations.

#### 🔹 GROUP BY + Aggregations
- Calculated total and average processing time per machine.
- Counted exam attendance per student–subject pair.

---

### 🧩 LeetCode Problems Solved
1. **1661. Average Time of Process per Machine** – Computed processing time using grouped differences.  
2. **577. Employee Bonus** – Used `LEFT JOIN` and filtered bonuses below 1000.  
3. **1280. Students and Examinations** – Applied `CROSS JOIN` + `LEFT JOIN` to count exam attempts.  

---

### 🧠 Key Learnings
- Cross joins help build full combinations of data for reporting.
- Left joins are ideal for identifying missing relationships.
- Aggregations with groupings help generate deeper insights.
- Efficient join logic significantly improves query performance.

---

### 🪄 Status
**✔ Completed Successfully**

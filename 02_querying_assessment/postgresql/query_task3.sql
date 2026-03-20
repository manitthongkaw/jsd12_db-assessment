-- Task 3: Staff Performance Review
-- At the end of the month, the owner wants to reward the hardest-working cashiers.
-- To decide fairly, they want to see how many orders each staff member has processed,
-- with the busiest staff member appearing at the top of the list.
--
-- Hint: Write a query to find the total number of orders processed by each staff member.
-- The result should show the staff member's full name (concatenated) and their total order count,
-- ordered by the count in descending order.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task3_bonus.mongodb.js

-- ---------------------------------------------------------------
-- Your thinking process (required)
-- ---------------------------------------------------------------
-- Before writing your query, explain in your own words how you
-- interpreted the task, what data you need, which table(s) are
-- involved, and what SQL concepts you plan to use.
-- Write in English or Thai. Do not skip this step.
--
-- Your thinking:
/*
  1. ดึง - รายชื่อพนักงาน-และ-ออเดอร์ - FROM staff JOIN orders
  2. จับคู่ - ข้อมูลพนักงาน-กับ-ออเดอร์ - ON staff.staff_id = orders.staff_id
  3. รวม - ข้อมูลพนักงาน - GROUP BY staff.staff_id
  4. เรียง - จำนวนครั้งที่รับออเดอร์ จาก มากไปน้อย - ORDER BY order_count desc;
  5. แสดง - รายชื่อเต็ม และจำนวนครั้งที่รับออเดอร์ - SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(order_id) AS order_count
*/

SELECT CONCAT(first_name, ' ', last_name) AS full_name, COUNT(order_id) AS order_count
FROM staff
LEFT JOIN orders
  ON staff.staff_id = orders.staff_id
GROUP BY staff.staff_id
ORDER BY order_count desc;
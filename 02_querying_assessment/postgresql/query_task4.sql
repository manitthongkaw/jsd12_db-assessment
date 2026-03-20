-- Task 4: Supplier Dependency Check
-- The manager has just heard that 'Freshest Farm Produce' may be delayed on their next delivery.
-- Before deciding whether to source from an alternative supplier, they need to know exactly
-- which ingredients depend on that supplier, so they can assess the impact on the menu.
--
-- Hint: Write a query to find the names of all ingredients supplied by 'Freshest Farm Produce'.

-- Bonus: The dataset is identical in the MongoDB database, meaning the same business insight can be retrieved.
-- Write the equivalent query for MongoDB. See query_task4_bonus.mongodb.js

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
  1. ดึง - รายชื่อซัพพลายเออร์-และ-วัตถุดิบ - FROM suppliers JOIN ingredients
  2. จับคู่ - ข้อมูลซัพพลายเออร์-กับ-วัตถุดิบ - ON suppliers.supplier_id = ingredients.supplier_id
  3. เลือก - เฉพาะซัพพลายเออร์ชื่อ Freshest Farm Produce - WHERE suppliers.name = 'Freshest Farm Produce'
  4. แสดง - รายการวัตถุดิบ และข้อมูลติดต่อซัพพลายเออร์ - SELECT ingredients.name AS ingredients_name, stock_level, contact_person, phone_number , suppliers.name AS suppliers_name
*/

SELECT ingredients.name AS ingredients_name, stock_level, contact_person, phone_number , suppliers.name AS suppliers_name
FROM suppliers
JOIN ingredients
ON suppliers.supplier_id = ingredients.supplier_id
WHERE suppliers.name = 'Freshest Farm Produce';
USE sql_store;

#SELECT customer_id,first_name 会根据这个顺序排列
#SELECT 1,2
#按照下列顺序
# or -- 为注释
SELECT *
FROM customers
-- WHERE customer_id = 1
ORDER BY first_name
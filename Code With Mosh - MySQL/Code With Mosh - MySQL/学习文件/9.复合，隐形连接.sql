# 复合连接 order_items table ： order_id 和 product_id 合起来独特不重复
USE sql_store;
SELECT *
 FROM order_items oi
 JOIN order_item_notes oin
	ON oi.order_id = oin.order_id        # 
    AND oi.product_id = oin.product_id;   # 这两行使用AND 整合ON 的条件 
    
    
    
    
##隐形连接问题
SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;
    
-- 和上面一样作用， 但是implicit join 
SELECT *
FROM orders o, customers c
WHERE o.customer_id = c.customer_id  # 如果忘记WHERE语句则会把所有东西全部join，全乱掉， 所以尽量使用JOIN 不用WHERE
Select * 
FROM customers
WHERE phone_num IS NULL; # 可用 NULL 值


SELECT *           ## 扳手键进入 管理页面 ， 黄色闪电代表该table中每项带有的独特ID， customers里第一行便是，每个customer 的id均不同，为独特标识
FROM customers
-- ORDER BY  first_name DESC; # sort, 默认升序， DESC 代表descending 降序
ORDER BY state DESC , first_name ;

SELECT first_name ,last_name, 10 AS points   # 可提取任意列， order时也可以使用未提取的列，甚至可以自己新建莫名其妙的列，都能sort
FROM customers
ORDER BY birth_date;

SELECT *,quantity *unit_price AS total_price
FROM order_items
where order_id = 2
ORDER BY total_price DESC;


SELECT *
FROM customers
-- LIMIT 3 # 前多少个， 如果大于总数则返回所有
LIMIT 6,3 # 6 为 offsetm 跳过前6个 再取三个 

## LIMIT 要放到最后一个 
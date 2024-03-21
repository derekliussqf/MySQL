SELECT order_id ,first_name,last_name ,o.customer_id #不能直说customer_id  因为有多个同名列在不同table中
FROM orders o        # o 为 orders的代用名 下面c同理
INNER JOIN customers c  #可省略INNER
	ON o.customer_id = c.customer_id;  #选取order里customer id 和 customer 里 customer id相同的项
    
    
#跨数据库
#连接inventory 和 store的product table （完全相同
USE sql_inventory;

SELECT *
FROM sql_store.order_items oi  #如果有USE， 只需要给不在该database里的data加prefix，不然自动从本database找
JOIN products p
#JOIN sql_inventory.products p
	ON oi.product_id = p.product_id;
    
## 自连接
USE sql_hr;
select 
	e.employee_id, e.first_name, m.first_name AS manager
FROM employees e 
JOIN employees m  # 相当于吧employees 看成两个副本 e和m 
	ON e.reports_to = m.employee_id;


### example :

USE sql_store;
SELECT 
	o.order_id,
	o.order_Date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
		ON o.customer_id = c.customer_id
JOIN order_statuses os
		ON o.status = os.order_status_id;
        
        
USE sql_invoicing;
SELECT 
	p.date,
    p.invoice_id,
    p.amount,
    c.name,
    pm.name
    
FROM payments p
JOIN clients c
	ON p.client_id = c.client_id
JOIN payment_methods pm
	ON p.payment_method = pm.payment_method_id
    


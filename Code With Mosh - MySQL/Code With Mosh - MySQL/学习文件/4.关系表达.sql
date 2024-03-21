SELECT *
-- FROM Customers
#WHERE points > 3000 #选择   > >= < <= =,  !=  <> 这俩都是not equal 
-- WHERE state = 'VA' 
-- WHERE state <> 'VA'
-- WHERE birth_date > '1990-01-01'  # 1990年 一月一号之后出生, yyyy-mm-dd是标准格式

 # AND  OR  NOT 
-- WHERE NOT birth_date > '1990-01-01' OR  points >1000  and
-- 		state = 'VA'           # 注意顺序 AND > OR ， NOT 紧跟后面的， 这个是：出生不晚于19900101 或者 （pts >1000 并且 state = va）
FROM order_items
WHERE order_id = 6 AND unit_price * quantity >30  # order id 为6 且总价 > 30

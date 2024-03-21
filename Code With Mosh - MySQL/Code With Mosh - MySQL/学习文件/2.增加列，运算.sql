SELECT 
 last_name,
 first_name, 
 points,  
 points *10 + 100 ,# 能做运算 能拆分行
 ( points +10) *100 AS 'discount_factor' # 增加and命名新列
FROM customers
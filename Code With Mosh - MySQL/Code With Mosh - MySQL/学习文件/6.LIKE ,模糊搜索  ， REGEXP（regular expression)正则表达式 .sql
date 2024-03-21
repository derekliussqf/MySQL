SELECT *
FROM customers 
-- WHERE last_name LIKE 'B%' # % 为任意数量字符 ，这行返回姓以B 开头的
-- WHERE last_name LIKE '%b%' #姓包含B 的， %能放在任何地方
WHERE last_name LIKE 'b____y'; # _ 为一个字符 返回姓为 B - - - - Y 的

SELECT *
FROM customers
WHERE address LIKE '%trail%' OR
	  address LIKE '%avenue%' ;
      ## 因为有模糊搜索 ， 不能用in 来合并   也可以在LIKE 前面加 NOT 
      
SELECT *
FROM customers 
-- WHERE last_name REGEXP 'field' #REGEXP 模糊搜索 包含就行
-- WHERE last_name REGEXP '^field' #  ^ 代表起始， $代表结尾， 这个为 以 field  开始的姓，  field$ 则是以field结尾的姓
-- WHERE last_name REGEXP '^ field | mac | rose '  # | 代表 or 这个代表 从field 起始 或者 包含 mac ， rose
-- WHERE last_name REGEXP '[gim]e' # 代表返回任何包含 ge, ie, me 的姓， 【】 能加在任何位置
WHERE last_name REGEXP '[a-h]e' # a 到 h 接e的姓
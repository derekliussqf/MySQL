SELECT *
FROM  Customers

## 合并 in
-- WHERE state = 'VA' OR STATE = 'GA' OR state = 'FL'      合并！
-- WHERE state NOT IN ('VA' , 'GA' , 'FL')

##BETWEEN 包含该数值 ： 1000 <= s <= 3000
WHERE points BETWEEN 1000 AND 3000
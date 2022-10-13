SELECT * FROM Customers WHERE Country = 'Germany';
SELECT * FROM Customers WHERE Country <> 'Germany';
SELECT * FROM Customers WHERE Country != 'Germany';
SELECT * FROM Customers WHERE NOT Country = 'Germany';

-- 미국 (usa) 살지 않는 고객들
SELECT * FROM Customers WHERE NOT Country = 'USA';
-- usa있지 않은 공급자들 (suppliers)
SELECT * FROM Suppliers WHERE NOT Country = 'USA';
-- 주문일자(ordersdate)가 97년도가 아닌 주문 번호들 (orders)
SELECT * FROM Orders WHERE NOT (OrderDate >= '1997-01-01'
							and OrderDate < '1998-01-01'); 
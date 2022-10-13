-- ORDER BY : 조회된 레코드(행,row) 정렬

SELECT * FROM Customers;
SELECT *
FROM Customers
ORDER BY CustomerID;

SELECT * FROM Customers ORDER BY CustomerName;

SELECT * FROM Customers ORDER BY Country;

SELECT * FROM Customers ORDER BY Country,city;

-- 직원 생일 순으로 직원조회
SELECT * FROM Employees ORDER BY BirthDate;

-- 상품명순으로 상품조회
SELECT * FROM Products ORDER BY ProductName; 

SELECT
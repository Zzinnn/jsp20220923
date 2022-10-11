-- not equals : <>, != 같지않다
SELECT * FROM Customers WHERE Country <> 'Mexico';
SELECT * FROM Customers WHERE Country <> 'germany';
SELECT * FROM Customers WHERE Country != 'Mexico';
SELECT * FROM Customers WHERE Country != 'Germany';

-- suppliers 테이블에서 국가가 japan이 아닌 공급자들 조회
SELECT * FROM Suppliers WHERE Country <> 'japan';
SELECT count(*) FROM Suppliers;
SELECT count(*) FROM Suppliers WHERE Country <> 'japan';

SELECT * FROM Employees WHERE EmployeeID <> 3;
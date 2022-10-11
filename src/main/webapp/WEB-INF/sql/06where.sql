-- where : 결과 행의 조건을 작성할 수 있는 키워드
SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Mexico';

-- customers 테이블에서 country가 france인 레코드만 조회
SELECT * FROM Customers WHERE Country = 'france';

-- Suppliers 테이블에서 country가 UK인 레코드만 조회
SELECT * FROM Suppliers WHERE country = 'UK';

-- Costomers 테이블에서 Country가 France인 고객과 이름만 조회
SELECT CustomerName FROM Customers WHERE Country = 'France';

-- Suppliers 테이블에서 Country 가 japan인 공급자면(SupplierName) 조회
SELECT SupplierName FROM Suppliers WHERE Country = 'japan';

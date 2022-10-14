-- UPDATE 레코드(row)의 필드(column)들을 수정
USE w3schools;

UPDATE Customers
SET contactName = 'Alfred Schmit'
WHERE customerID =1;

SELECT * FROM Customers WHERE CustomerID = 1;

SELECT * FROM Customers ORDER BY 1 DESC;
UPDATE Customers
SET CustomerName = 'wartian', 
	ContactName = 'pirkko', 
    Address = 'Torikatu 38', 
    City = 'Oulu', 
    PostalCode = '90110', 
    Country = 'Finland' 
WHERE CustomerID = 91; 

SELECT * FROM Customers WHERE CustomerID = 91;
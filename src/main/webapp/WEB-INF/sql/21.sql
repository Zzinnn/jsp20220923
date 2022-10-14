-- 여러 행 한번에 수정
UPDATE Customers
SET PostalCode = '00000'
WHERE Country = 'Mexico';

-- 한줄복사 : ctrl + D
SELECT * FROM Customers
WHERE Country = 'Mexico';

SET SQL_SAFE_UPDATES = 0;

-- USA 국가의 고객들의 city를 new york으로 변경
UPDATE Customers
SET City = 'New York'
WHERE Country = 'USA';

SELECT * FROM Customers
WHERE Country = 'USA';
-- UK 국가의 고객들의 Address를 Gangnam으로 변경
UPDATE Customers
SET Address = 'Gangnam'
WHERE Country = 'UK';

SELECT * FROM Customers
WHERE Country = 'UK';
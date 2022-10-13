USE w3schools;

-- INSERT INTO : 테이블에 레코드 추가하는 명령문
INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES
(10, 'Son' , 'HM', '1999-01-01', 'EmpID101.pic', 'soccer player');

INSERT INTO Employees
(EmployeeID, LastName, FirstName, BirthDate, Photo , Notes)
VALUES
(11,'tony','stark','1980-01-01','Em','ee');

SELECT * FROM Employees;

INSERT INTO Employees
(EmployeeID,LastName,FirstName,Photo)
VALUES
(13,'doctor','strange','.jsp');


-- DESCRIBE 테이블 구조 조회
DESCRIBE Customers;
DESC Customers;

-- 제약사항 조회
-- key pri 다른 레코드와 중복된 값을 갖지 못함 (key 같은 행에 같은 값을 가질 수 있음)
-- null no : 값이 있어야 함
-- 마지막에 입력된 id 다음 번호부터 이어짐





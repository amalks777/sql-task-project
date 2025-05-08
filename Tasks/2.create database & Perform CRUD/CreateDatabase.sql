CREATE DATABASE AmalProject1DB;

USE AmalProject1DB;

CREATE TABLE Customers (
CustomerId INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
Phone VARCHAR(20),
StreetAddress VARCHAR(100),
City VARCHAR(50),
CustomerState VARCHAR(50),
ZipCode VARCHAR(10),
Country VARCHAR(50)
)


INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Phone, StreetAddress, City, CustomerState, ZipCode, Country)
VALUES (1, 'aml', 'aml', 'aml@gmail.com', '1234567890', 'Pallom', 'Kottayam', 'Kerala', '654638', 'India');

INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Phone, StreetAddress, City, CustomerState, ZipCode, Country)
VALUES (2, 'Amal', 'KS', 'amal123@gmail.com', '9276543287', 'pala', 'Kottayam', 'Kerala', '642635', 'India');

INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Phone, StreetAddress, City, CustomerState, ZipCode, Country)
VALUES (3, 'Amalaml', 'S', 'amal@gmail.com', '987654410', 'pallom', 'Kottayam', 'Kerala', '645086', 'India');

SELECT * FROM  Customers;

UPDATE Customers 
SET Phone = '9876543210', ZipCode = '645086'
WHERE CustomerId = 2;

DELETE FROM Customers
WHERE CustomerId = 3;

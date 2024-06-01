CREATE DATABASE assignment;

CREATE TABLE Products (
   ProdId INTEGER PRIMARY KEY IDENTITY(1,1),
   ProdName VARCHAR(200),
   ProdPrice INTEGER,
   ProdDesc VARCHAR(200)
);

CREATE TABLE ShoppingCart (
   CartId INTEGER PRIMARY KEY IDENTITY(1,1),
   ProductID INTEGER,
   Quantity VARCHAR(200),
   DateAdded DATETIME DEFAULT CURRENT_TIMESTAMP,
   FOREIGN KEY (ProductID) REFERENCES Products(ProdId)
);

CREATE TABLE Orderr(
OrderId INTEGER PRIMARY KEY IDENTITY(1,1),
Quantity INTEGER,
OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
Total FLOAT,
ProductId INTEGER,
FOREIGN KEY (ProductId) REFERENCES Products(ProdId)
);
ALTER TABLE Orderr
ALTER COLUMN Total Integer;


INSERT INTO Products(ProdName, ProdPrice, ProdDesc) VALUES ('Bat', 67, 'Good bat for playing'),
('Ball', 45, 'Good ball for playing'),
('kids', 120, 'Good kids for playing');

INSERT INTO ShoppingCart(ProductID, Quantity) VALUES (1, 2),
(3, 1),
(5,4);

INSERT INTO Orderr(Quantity, Total, ProductId) VALUES (2, 67, 1),
(1, 45, 3),
(4, 120, 5);


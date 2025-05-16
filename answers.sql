-- Unpivoting a table with multiple rows into a single row
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION
SELECT 101, 'John Doe', 'Mouse'
UNION
SELECT 102, 'Jane Smith', 'Tablet'
UNION
SELECT 102, 'Jane Smith', 'Keyboard'
UNION
SELECT 102, 'Jane Smith', 'Mouse'
UNION
SELECT 103, 'Emily Clark', 'Phone';

-- Quiz 2
-- Table for Orders (removing partial dependency)
CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

CREATE TABLE OrderItems (
  OrderID INT,
  Product VARCHAR(100),
  Quantity INT,
  PRIMARY KEY (OrderID, Product),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);


-- Insert into Orders
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Insert into OrderItems
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

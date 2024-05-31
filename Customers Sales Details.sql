/*
-- Query: SELECT 
    c.FirstName, 
    c.LastName, 
    s.Product, 
    s.SaleDate, 
    s.Amount
FROM 
    Customers c
JOIN 
    Sales s ON c.CustomerID = s.CustomerID
LIMIT 0, 50000

-- Date: 2024-05-31 09:40
*/
INSERT INTO `` (`FirstName`,`LastName`,`Product`,`SaleDate`,`Amount`) VALUES ('Vignesh','Gadiraju','Product A','2024-05-02',99.99);
INSERT INTO `` (`FirstName`,`LastName`,`Product`,`SaleDate`,`Amount`) VALUES ('Adithya','Gandrakota','Product B','2024-05-04',149.99);

/*
-- Query: SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    ct.ContactDate, 
    ct.ContactMethod, 
    ct.Notes
FROM 
    Customers c
JOIN 
    Contacts ct ON c.CustomerID = ct.CustomerID
LIMIT 0, 50000

-- Date: 2024-05-31 09:39
*/
INSERT INTO `` (`CustomerID`,`FirstName`,`LastName`,`ContactDate`,`ContactMethod`,`Notes`) VALUES (1,'Vignesh','Gadiraju','2024-05-01','Phone','Discussed new product features');
INSERT INTO `` (`CustomerID`,`FirstName`,`LastName`,`ContactDate`,`ContactMethod`,`Notes`) VALUES (2,'Adithya','Gandrakota','2024-05-03','Email','Sent pricing information');

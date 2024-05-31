CREATE DATABASE CRMSystem;
USE CRMSystem;
-- creating a Table customers according to the customers details 

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(10),
    Country VARCHAR(50)
);
 -- creating a Table customers contacts according to the customers details

CREATE TABLE Contacts (
    ContactID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    ContactDate DATE,
    ContactMethod VARCHAR(50),
    Notes TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- creating a Table sales according management records 

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Product VARCHAR(100),
    SaleDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
-- creating a Table on Support tickets according management records 

CREATE TABLE SupportTickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    TicketDate DATE,
    IssueDescription TEXT,
    Status VARCHAR(50),
    ResolutionDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Inserting the data into the customers table

INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, Country)
VALUES
('Vignesh', 'Gadiraju', 'Vignesh.doe@example.com', '707502', 'Street Old', 'Kadapa', 'Andhrapradesh', '516002', 'USA'),
('Adithya', 'Gandrakota', 'Adithya.smith@example.com', '6305350', 'Street new', 'Banjara Hills', 'Hyderabad', '510000', 'USA');

-- Inserting the contact details into contact table 

INSERT INTO Contacts (CustomerID, ContactDate, ContactMethod, Notes)
VALUES
(1, '2024-05-01', 'Phone', 'Discussed new product features'),
(2, '2024-05-03', 'Email', 'Sent pricing information');

-- inserting the sales details into sales details

INSERT INTO Sales (CustomerID, Product, SaleDate, Amount)
VALUES
(1, 'Product A', '2024-05-02', 99.99),
(2, 'Product B', '2024-05-04', 149.99);

-- inserting the support tickets of the customers into the support tickets tables

INSERT INTO SupportTickets (CustomerID, TicketDate, IssueDescription, Status, ResolutionDate)
VALUES
(1, '2024-05-05', 'Login issue', 'Open', NULL),
(2, '2024-05-06', 'Billing error', 'Resolved', '2024-05-07');

-- building queries through the above procedure

SELECT * FROM Customers;

-- building the queries basis on the customer details

SELECT 
    c.CustomerID, 
    c.FirstName, 
    c.LastName, 
    ct.ContactDate, 
    ct.ContactMethod, 
    ct.Notes
FROM 
    Customers c
JOIN 
    Contacts ct ON c.CustomerID = ct.CustomerID;
    
-- building queries on the sales data

SELECT 
    c.FirstName, 
    c.LastName, 
    s.Product, 
    s.SaleDate, 
    s.Amount
FROM 
    Customers c
JOIN 
    Sales s ON c.CustomerID = s.CustomerID;
    
-- building queries on the support tickets

SELECT 
    c.FirstName, 
    c.LastName, 
    st.IssueDescription, 
    st.Status, 
    st.TicketDate, 
    st.ResolutionDate
FROM 
    Customers c
JOIN 
    SupportTickets st ON c.CustomerID = st.CustomerID;














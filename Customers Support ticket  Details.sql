/*
-- Query: SELECT 
    c.FirstName, 
    c.LastName, 
    st.IssueDescription, 
    st.Status, 
    st.TicketDate, 
    st.ResolutionDate
FROM 
    Customers c
JOIN 
    SupportTickets st ON c.CustomerID = st.CustomerID
LIMIT 0, 50000

-- Date: 2024-05-31 09:41
*/

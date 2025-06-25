/** Join with Aggregation **/


SELECT c.FullName AS Customer, COUNT(o.OrderID) AS OrderCount, SUM(o.TotalAmount) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FullName
ORDER BY TotalSpent DESC;

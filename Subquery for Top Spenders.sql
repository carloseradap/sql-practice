/** Subquery for Top Spenders **/

SELECT c.FullName, COUNT(o.OrderID) AS [Order QTY], SUM(o.TotalAmount) AS [Total Amount]
FROM Customers AS c JOIN Orders AS o 
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IN (
    SELECT CustomerID
    FROM Orders
    GROUP BY CustomerID
    HAVING SUM(TotalAmount) > 1000
)
GROUP BY c.FullName
ORDER BY [Total Amount] DESC;

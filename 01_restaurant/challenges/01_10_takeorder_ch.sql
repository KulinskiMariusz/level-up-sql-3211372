-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers AS cust
WHERE cust.FirstName = 'Loretta' AND cust.LastName = 'Hundey'

INSERT INTO Orders  (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00')

SELECT * FROM Orders WHERE CustomerID = 70 ORDER BY OrderDate DESC

DELETE FROM Orders WHERE OrderID = 1001
DELETE FROM OrdersDishes WHERE OrderID = 1001

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES(1002, 
      (SELECT DishID FROM Dishes AS dis
      WHERE dis.Name = 'Tropical Blue Smoothie')
      )

SELECT * FROM OrdersDishes AS OrDi WHERE OrDi.OrderID = 1002

SELECT SUM(dis.Price)
FROM Dishes AS dis
JOIN OrdersDishes As OrDi ON dis.DishID = OrDi.DishID
WHERE OrDi.OrderID = 1002
-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT cust.CustomerID, cust.LastName, cust.FirstName
FROM Customers AS cust 
WHERE     cust.FirstName = 'Cleo'
      AND cust.LastName = 'Goldwater'

SELECT * FROM Dishes WHERE Name = 'Quinoa Salmon Salad'

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 'Quinoa Salmon Salad')
WHERE CustomerID = (  SELECT cust.CustomerID
                      FROM Customers AS cust 
                      WHERE     cust.FirstName = 'Cleo'
                           AND cust.LastName = 'Goldwater')

SELECT cust.FirstName, cust.LastName, Dishes.Name AS FavouriteDish FROM Customers AS cust 
JOIN Dishes ON cust.FavoriteDish = Dishes.DishID
WHERE CustomerID = 42
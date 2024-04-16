-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

SELECT * FROM Customers 
WHERE FirstName='Taylor' AND LastName='Jenkins'

UPDATE Customers
SET 
  Address = '27170 6th Ave.',
  City = 'Washington',
  State = 'DC'
WHERE CustomerID=26

SELECT * FROM Customers 
WHERE CustomerID=26
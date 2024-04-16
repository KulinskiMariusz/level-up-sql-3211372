-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT *
FROM Reservations AS R1
JOIN Customers AS C1 ON C1.CustomerID = R1.CustomerID
WHERE C1.FirstName = 'Norby'
AND R1.Date > '2022-07-24'

DELETE FROM Reservations WHERE Reservations.ReservationID = '2000'
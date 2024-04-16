-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT * 
FROM Customers
WHERE Email = 'smac@kinetecoinc.com'

INSERT INTO Customers (FirstName, LastName, Email)
VALUES ('Sam','McAdams','smac@kinetecoinc.com')

INSERT INTO Reservations (CustomerID, Date, PartySize)
VALUES ('102','2022-08-12 18:00:00','5')

SELECT c1.LastName, c1.FirstName, c1.Email, r1.Date, r1.PartySize, R1.ReservationID
FROM Customers AS c1 JOIN Reservations AS r1 on c1.CustomerID = r1.CustomerID
WHERE c1.Email = 'smac@kinetecoinc.com'

DELETE FROM Reservations WHERE ReservationID = 2001 OR ReservationID = 2002
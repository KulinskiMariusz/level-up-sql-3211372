-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM Reservations AS R1
JOIN Customers AS C1 on C1.CustomerID = R1.CustomerID
WHERE C1.LastName LIKE 'Ste%'
AND R1.PartySize = 4
ORDER BY R1.Date DESC
-- Return three books to the library using
-- their bar codes.
-- Return date: July 5, 2022
-- Book 1: 6435968624
-- Book 2: 5677520613
-- Book 3: 8730298424

UPDATE Loans
SET
ReturnedDate = '2022-07-05'
WHERE Loans.ReturnedDate IS NULL
AND Loans.BookID = (  SELECT Books.BookID FROM Books 
                        JOIN Loans ON Loans.BookID = Books.BookID
                        WHERE Books.Barcode = 6435968624)



SELECT Books.BookID, Loans.ReturnedDate FROM Books 
JOIN Loans ON Loans.BookID = Books.BookID
WHERE Books.Barcode = 5677520613 OR Books.Barcode = 8730298424 OR Books.Barcode = 6435968624
ORDER BY Loans.ReturnedDate DESC
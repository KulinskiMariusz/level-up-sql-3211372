-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT COUNT(Books.BookID)
FROM Books
WHERE Title = 'Dracula'

SELECT COUNT(Books.Title)
FROM Loans
JOIN Books ON Books.BookID = Loans.BookID
Where ReturnedDate IS NULL
AND Books.Title = 'Dracula'

SELECT
      ( SELECT COUNT(Books.BookID)
        FROM Books
        WHERE Title = 'Dracula')
        -
      ( SELECT COUNT(Books.Title)
        FROM Loans
        JOIN Books ON Books.BookID = Loans.BookID
        Where ReturnedDate IS NULL
        AND Books.Title = 'Dracula')
AS AvaliableCopies